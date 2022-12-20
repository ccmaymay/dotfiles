set bs=indent,eol,start
set nocompatible
set viminfo='20,\"50
set history=50
set background=dark
set nobackup
set ruler
set showcmd
" set noautoindent
" set nocindent

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set ts=4
set sts=4
set sw=4
set et

filetype on
filetype plugin indent on
au FileType * setlocal ts=2 sts=2 sw=2 et colorcolumn=120 tw=119
au FileType bash setlocal ts=4 sts=4 sw=4 et colorcolumn=120 tw=119
au FileType c setlocal ts=2 sts=2 sw=2 et colorcolumn=120 tw=119
au FileType cpp setlocal ts=2 sts=2 sw=2 et colorcolumn=120 tw=119
au FileType css setlocal ts=2 sts=2 sw=2 et colorcolumn=120 tw=119
au FileType java setlocal ts=2 sts=2 sw=2 et colorcolumn=120 tw=119
au FileType javascript setlocal ts=2 sts=2 sw=2 et colorcolumn=120 tw=119
au FileType json setlocal ts=2 sts=2 sw=2 et colorcolumn=120 tw=119
au FileType html setlocal ts=2 sts=2 sw=2 et colorcolumn=120 tw=119
au FileType make setlocal ts=4 sts=4 sw=4 noet colorcolumn=120 tw=119
au FileType matlab setlocal ts=4 sts=4 sw=4 et colorcolumn=120 tw=119
au FileType markdown setlocal ts=4 sts=4 sw=4 et colorcolumn=120 tw=119
au FileType python setlocal ts=4 sts=4 sw=4 et colorcolumn=120 tw=119
au FileType sh setlocal ts=4 sts=4 sw=4 et colorcolumn=120 tw=119
au FileType tex setlocal ts=4 sts=4 sw=4 et colorcolumn=80 tw=79
au FileType text setlocal ts=4 sts=4 sw=4 et colorcolumn=80 tw=79
au FileType vue setlocal ts=2 sts=2 sw=2 et colorcolumn=120 tw=119
au FileType yaml setlocal ts=2 sts=2 sw=2 et colorcolumn=120 tw=119
au FileType zsh setlocal ts=4 sts=4 sw=4 et colorcolumn=120 tw=119

" http://stackoverflow.com/a/235970
" highlight OverLength ctermbg=darkblue ctermfg=white guibg=#592929
" match OverLength /\%80v.\+/
