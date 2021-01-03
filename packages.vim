" ----------------------------------------------------------------------------
"           FILE: packages.vim
"    DESCRIPTION: vim plugins
"         AUTHOR: Zoltán Király <zoliky@gmail.com>
" ----------------------------------------------------------------------------

command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

if !exists('*minpac#init')
    finish
endif

call minpac#init({'verbose': 0})

" minpac must have {'type': 'opt'} so that it can be loaded with pacadd
call minpac#add('k-takata/minpac', {'type': 'opt'})

" General enhancements
call minpac#add('w0rp/ale')
call minpac#add('tpope/vim-characterize')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('mhinz/vim-startify')
call minpac#add('mhinz/vim-grepper')
call minpac#add('SirVer/ultisnips')
call minpac#add('junegunn/fzf.vim')
call minpac#add('godlygeek/tabular')
call minpac#add('Yggdroot/indentLine')
call minpac#add('Raimondi/delimitMate')
call minpac#add('sgur/vim-editorconfig')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('nelstrom/vim-visual-star-search')

" Custom textobjects
call minpac#add('kana/vim-textobj-user')
call minpac#add('kana/vim-textobj-entire')

" Markdown
call minpac#add('vim-voom/VOoM')
call minpac#add('tpope/vim-markdown')
call minpac#add('nelstrom/vim-markdown-folding')

" HTML
call minpac#add('othree/html5.vim')

" JavaScript
call minpac#add('pangloss/vim-javascript')
call minpac#add('elzr/vim-json')

" Elixir
call minpac#add('elixir-editors/vim-elixir')

" PostgreSQL
call minpac#add('lifepillar/pgsql.vim')

" Rare and exotic languages
call minpac#add('nelstrom/vim-subrip')

" Colorschemes
call minpac#add('lifepillar/vim-gruvbox8', {'type': 'opt'})
call minpac#add('lifepillar/vim-solarized8', {'type': 'opt'})
