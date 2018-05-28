set nocompatible
set backspace=2

syntax on
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

inoremap kj <esc>
imap <c-u> <esc>mxviwU`xa

let mapleader = "-"
let localleader = "\\"

set splitright
set splitbelow
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

iabbrev jO JSONObject
iabbrev ja JSONArray
iabbrev jo jsonOut
iabbrev ji jsonIn

set mouse=a
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

