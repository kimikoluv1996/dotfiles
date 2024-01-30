" Joey's VIm CONFIG!!! :3

"" Plugin Management
"stuff required for vundle to work
set nocompatible
syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vimwiki/vimwiki'

Plugin 'davidhalter/jedi-vim'

Plugin 'preservim/nerdtree'

call vundle#end()
filetype plugin on


" other stuff

set relativenumber
filetype indent on
set tabstop=4
set softtabstop=4
set autoindent
set encoding=utf-8

nnoremap <C-n> :NERDTree<CR>
nnoremap w:<C-w><C-w>
nnoremap <C-t> :terminal<CR>
nnoremap <C-p> :!python %<CR>

nnoremap <C-h>w :echo 'hello world'<CR>
nnoremap <leader>vv :vspl ~/.vimrc<CR>
