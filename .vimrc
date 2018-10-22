"system{

set noswapfile
set shortmess=atI

"}

"keyboard{

nnoremap confe :e $MYVIMRC<CR>
nnoremap confr :source $MYVIMRC<CR>

nnoremap <S-up> :resize -5<cr>
nnoremap <S-down> :resize +5<cr>
nnoremap <S-left> :vertical resize -5<cr> 
nnoremap <S-right> :vertical resize +5<cr> 

map <C-up> <ESC>:tabnew<CR>
map <C-down> <ESC>:tabc<CR>
map <C-right> <ESC>:tabn<CR>
map <C-left> <ESC>:tabp<CR>

cmap pInstall PluginInstall
cmap pList BundleList
cmap pClean BundleClean

cmap tree NERDTree

"}

"color{

set number

"}

"tab{

set tabstop=4
set shiftwidth=4
set expandtab

"}

"Vunble{

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'clones/vim-l9'
Plugin 'othree/vim-autocomplpop'

call vundle#end()

"}
