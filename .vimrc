"
" Ron's base config
"
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
set nocompatible
set backspace=2

"
" General settings
"
syntax on
set mouse=a
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

let mapleader = "-"
let localleader = "\\"

inoremap kj <esc>

set splitright
set splitbelow
" Open .vimrc for editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"
" KEX settings
"
iabbrev jO JSONObject
iabbrev ja JSONArray
iabbrev jo jsonOut
iabbrev ji jsonIn
