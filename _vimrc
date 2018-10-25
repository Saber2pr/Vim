"system{

    set encoding=utf-8
    set noswapfile
    set shortmess=atI
    set guifont=Consolas:h11

"}

"window{

    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guioptions-=m
    autocmd GUIEnter * simalt ~x

"}

"keyboard{

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
    syntax enable  
    syntax on 
    au BufEnter * hi Comment guifg=darkgreen
    au BufEnter * hi Pmenu guibg=#444444
    au BufEnter * hi PmenuSel guibg=#555555 guifg=#00ffff
    au InsertEnter * hi CursorColumn guibg=darkblue guifg=NONE
    
    color candy
    
    if executable("vimtweak.dll") 
        autocmd guienter * call libcallnr("vimtweak","SetAlpha",220) 
    endif
    
    au InsertLeave * hi Cursor guibg=red
    au InsertEnter * hi Cursor guibg=green
    au InsertLeave * se nocursorcolumn
    au InsertEnter * se cursorcolumn
    "高亮当前列
    au InsertEnter * hi CursorColumn guibg=darkblue guifg=NONE
    
    "hi Functions
    au BufEnter * syn match Function /\<\w\+\%(\s*(\)\@=/
    au BufEnter * hi Function guifg=#f2a83b
    "hi key
    au BufEnter * syn match key /\w\+\s*\(:\)\@=/
    au BufEnter * hi key guifg=#6d9eeb
    "hi cppSpace
    au BufEnter * syn match cppSpace /\w\+\s*\(::\)\@=/
    au BufEnter * hi cppSpace guifg=#ffff00  

"}

"match{

    set showmatch
    inoremap ( ()<Esc>i
    inoremap [ []<Esc>i
    inoremap { {<CR>}<Esc>O
    inoremap ) <c-r>=ClosePair(')')<CR>
    inoremap ] <c-r>=ClosePair(']')<CR>
    inoremap } <c-r>=CloseBracket()<CR>
    inoremap " <c-r>=QuoteDelim('"')<CR>

"}

"tab{

    set tabstop=4
    set shiftwidth=4
    set expandtab
    set smarttab

"}

"Vunble{

    set rtp+=~/.vim/bundle/Vundle.vim
    
    call vundle#begin()
    
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'clones/vim-l9'
    Plugin 'othree/vim-autocomplpop'
    Plugin 'candy.vim'
    
    call vundle#end()

"}
