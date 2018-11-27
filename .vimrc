
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
inoremap <Up> :call SayRandomError()<CR>
nnoremap <Right> :call SayRandomError()<CR>
inoremap <Right> :call SayRandomError()<CR>
nnoremap <Down> :call SayRandomError()<CR>
inoremap <Down> <ESC>:call SayRandomErro()<CR>
nnoremap <Left> :call SayRandomError()<CR>
inoremap <Left> <ESC>:call SayRandomError()<CR>

set splitright
set splitbelow
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

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
set statusline+=\ --
set statusline+=\ %l:%L " current line:total lines
set statusline+=\ --
set statusline+=\ %p%%
set statusline+=%1*\ %=
set statusline+=%*\ %n\  " buffer number
hi User1 guifg=#222222 guibg=#191f26 gui=BOLD
