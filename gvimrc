" ----------------------------------------------------------------------------
"           FILE: .gvimrc
"    DESCRIPTION: gvim configuration file
"         AUTHOR: Zoltán Király <zoliky@gmail.com>
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Syntax, highlighting and spelling
" ----------------------------------------------------------------------------
set background=dark         " Use colors that look good on a dark background
silent! colorscheme gruvbox8

" ----------------------------------------------------------------------------
" Terminal
" ----------------------------------------------------------------------------
set guicursor=a:blinkon0    " Disable cursor blink

" ----------------------------------------------------------------------------
" GUI
" ----------------------------------------------------------------------------
set guioptions+=c           " Do not use modal alert dialogs
set guioptions-=rL          " Disable scrollbars
