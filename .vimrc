" Plugins
try
  call plug#begin('~/.config/nvim/plugged')
  call plug#end()
catch
endtry


" Ron settings
syntax enable
set backspace=2

filetype plugin indent on
set tabstop=2 " show existing tab with 2 spaces width
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set expandtab " On pressing tab, insert 2 spaces


" Old custom settings
let mapleader = "-"
let localleader = "\\"

function! SayRandomError()
  let swear_words = ['Shit', 'Bitch', 'Ass', 'Fuck', 'Damn']
  let random_number = abs(reltime()[1] % len(swear_words))
  let the_word = swear_words[random_number]
  let command = "say " . the_word

  try
    call jobstart(command)
  catch
    echom ">> Don't use arrow keys! " . the_word . "!"
  endtry
endfunction

nnoremap <Up> :call SayRandomError()<CR>
inoremap <Up> <ESC>:call SayRandomError()<CR>i
nnoremap <Right> :call SayRandomError()<CR>
inoremap <Right> <ESC>:call SayRandomError()<CR>i
nnoremap <Down> :call SayRandomError()<CR>
inoremap <Down> <ESC>:call SayRandomError()<CR>i
nnoremap <Left> :call SayRandomError()<CR>
inoremap <Left> <ESC>:call SayRandomError()<CR>i

set splitright
set splitbelow
" Open .vimrc for editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <C-n> :set number!<CR>
nnoremap <space> za

set smarttab
set incsearch
set autoindent
set scrolloff=1
set mouse=a " mouse wheel scrolling

" Color scheme
try
  colorscheme molokai
catch
  colorscheme desert
endtry

" Status line
set laststatus=2
set statusline=
set statusline+=>
set statusline+=\ %f " filename
set statusline+=\ -
set statusline+=\ %l:%L " current line:total lines
set statusline+=%1*\ %= " push following statusline content to the right
set statusline+=%*\ %n\  " buffer number
hi statusline ctermfg=black ctermbg=white
