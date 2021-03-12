version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
cmap <S-Insert> +
inoremap <C-Tab> w
cnoremap <C-Tab> w
inoremap <C-F4> c
cnoremap <C-F4> c
imap <S-Insert> 
nnoremap  gggHG
onoremap  gggHG
snoremap  gggHG
xnoremap  ggVG
vnoremap  "+y
noremap  
onoremap  :update
nnoremap  :update
vnoremap  :update
omap  "+gP
nmap  "+gP
vnoremap  "+x
noremap  
noremap  u
inoremap   :simalt ~
cnoremap   :simalt ~
map Q gq
nmap gx <Plug>NetrwBrowseX
omap <S-Insert> "+gP
vnoremap <BS> d
vnoremap <C-Tab> w
nnoremap <C-Tab> w
onoremap <C-Tab> w
vnoremap <C-F4> c
nnoremap <C-F4> c
onoremap <C-F4> c
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <C-Del> "*d
vnoremap <S-Del> "+x
vnoremap <C-Insert> "+y
vmap <S-Insert> 
nmap <S-Insert> "+gP
inoremap  gggHG
cnoremap  gggHG
inoremap  :update
inoremap  u
cmap  +
inoremap  
inoremap  u
noremap   :simalt ~
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backup
set diffexpr=MyDiff()
set expandtab
set guifont=Consolas:h12:b:cANSI
set guioptions=egmLt
set helplang=En
set history=50
set hlsearch
set incsearch
set keymodel=startsel,stopsel
set ruler
set selection=exclusive
set selectmode=mouse,key
set shiftwidth=4
set tabstop=4
set whichwrap=b,s,<,>,[,]
" vim: set ft=vim :
