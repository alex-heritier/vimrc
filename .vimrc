
" Plugins
call plug#begin('~/.config/nvim/plugged')
call plug#end()


" Ron settings
syntax enable
set backspace=2

filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab


" Old custom settings
let mapleader = "-"
let localleader = "\\"

function! SayRandomError()
  let swear_words = ['shit', 'bitch', 'ass', 'fuck', 'damn']
  let random_number = system("random 0 " . (len(swear_words) - 1))
  let command = "say " . swear_words[random_number]

  call jobstart(command)
endfunc

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

set smarttab      
set incsearch
set autoindent
set scrolloff=1
set mouse=a " mouse wheel scrolling
colorscheme molokai

" Status line
set laststatus=2
set statusline=
set statusline+=\ %f " filename
set statusline+=\ -
set statusline+=\ %l:%L " current line:total lines
" set statusline+=\ --
" set statusline+=\ %p%% " file percentage
set statusline+=%1*\ %= " push following statusline content to the right
set statusline+=%*\ %n\  " buffer number
hi statusline ctermfg=222 ctermbg=18
