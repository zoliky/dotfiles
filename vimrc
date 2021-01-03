" ----------------------------------------------------------------------------
"           FILE: .vimrc
"    DESCRIPTION: vim configuration file
"         AUTHOR: Zoltán Király <zoliky@gmail.com>
" ----------------------------------------------------------------------------

source ~/dotfiles/packages.vim
source ~/dotfiles/digraphs.vim

" ----------------------------------------------------------------------------
" Important
" ----------------------------------------------------------------------------
set pastetoggle=<f5>        " Toggle paste option on and off

" ----------------------------------------------------------------------------
" Moving around, searching and patterns
" ----------------------------------------------------------------------------
set incsearch       " Incremental search
set ignorecase      " Ignore case in search patterns

" ----------------------------------------------------------------------------
" Syntax, highlighting and spelling
" ----------------------------------------------------------------------------
set termguicolors
set background=dark
silent! colorscheme gruvbox8

syntax on               " Enable syntax highlighting
set hlsearch            " Highlight searches
set spelllang=en_us     " Set region to US English

" Shortcut to rapidly toggle spell checking
nmap <silent> <leader>s :set spell!<CR>

" ----------------------------------------------------------------------------
" Multiple windows
" ----------------------------------------------------------------------------
set laststatus=2    " Always display the status line
set hidden          " Allow unsaved background buffers
set splitbelow      " Horizontally split below
set splitright      " Vertically split to the right

" ----------------------------------------------------------------------------
" Terminal
" ----------------------------------------------------------------------------
set title           " Show title in console title bar

" ----------------------------------------------------------------------------
" Using the mouse
" ----------------------------------------------------------------------------
set mouse=nv        " Enable the mouse in normal and visual mode

" ----------------------------------------------------------------------------
" Messages and info
" ----------------------------------------------------------------------------
"set shortmess+=I   " Remove the intro message when starting vim
set showcmd         " Show (partial) command keys in the status line
set noshowmode      " Don't show the current mode in the status line
set ruler           " Show the line and column number of the cursor position
set visualbell      " Use a visual bell instead of beeping

" ----------------------------------------------------------------------------
" Editing text
" ----------------------------------------------------------------------------
set backspace=indent,eol,start  " Allow backspace in insert mode
set nrformats-=octal            " Don't treat numbers with leading zeros as octal
set nojoinspaces                " Don't use two spaces after '.' when joining

" ----------------------------------------------------------------------------
" Tabs and indenting
" ----------------------------------------------------------------------------
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab       " Insert space characters instead of a tab character
set autoindent      " Copy indent from current line when starting a new line

" ----------------------------------------------------------------------------
" Folding
" ----------------------------------------------------------------------------
set foldlevelstart=99

" ----------------------------------------------------------------------------
" Mapping
" ----------------------------------------------------------------------------
set ttimeoutlen=100     " Make Esc work faster

" ----------------------------------------------------------------------------
" Displaying text
" ----------------------------------------------------------------------------
set number          " Print the line number in front of each line
set linebreak

" Shortcut to rapidly toggle set list
nmap <silent> <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" ----------------------------------------------------------------------------
" Reading and writing files
" ----------------------------------------------------------------------------
set autoread        " Auto read externally modified files

" ----------------------------------------------------------------------------
" Swap file
" ----------------------------------------------------------------------------
set noswapfile

" ----------------------------------------------------------------------------
" Command line editing
" ----------------------------------------------------------------------------
set history=1000    " Keep 1000 lines of command line history
set wildmenu

" ----------------------------------------------------------------------------
" Multi-byte characters
" ----------------------------------------------------------------------------
set encoding=utf-8  " Set default encoding to UTF-8

" ----------------------------------------------------------------------------
" Autocommands
" ----------------------------------------------------------------------------
if has("autocmd")
    augroup Misc
        " Jump to the last known position when reopening a file
        autocmd BufReadPost *
            \ if line("'\"") > 1 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

        if has("nvim")
            " Switch to insert mode when entering a terminal buffer
            autocmd TermOpen,BufEnter term://* startinsert
        endif
    augroup END
endif

" ----------------------------------------------------------------------------
" Custom functions
" ----------------------------------------------------------------------------
" Strip trailing spaces
function! Preserve(command)
    let l:save = winsaveview()
    execute a:command
    call winrestview(l:save)
endfunction

command! TrimWhitespace call Preserve("%s/\\s\\+$//e")
nmap _$ :TrimWhitespace<CR>

" Mute search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Shortcut to rapidly toggle set colorcolumn
nnoremap <silent> <leader>c :execute "set cc=" . (&cc == "" ? "80" : "")<CR>

" ----------------------------------------------------------------------------
" Various
" ----------------------------------------------------------------------------
" Disable Q for entering Ex mode
nnoremap Q <Nop>

" ----------------------------------------------------------------------------
" Neovim specific
" ----------------------------------------------------------------------------
if has('nvim')
    set inccommand=nosplit      " Incremental substitution
endif

" ----------------------------------------------------------------------------
" Plugin specific
" ----------------------------------------------------------------------------
" ale
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = "never"
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1

" UltiSnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline_powerline_fonts = 1
let g:airline_theme = "tomorrow"

" delimitMate
let g:delimitMate_expand_cr = 1

" vim-json
let g:vim_json_syntax_conceal = 0

" pgsql.vim
let g:sql_type_default = 'pgsql'

" vim-startify
let g:startify_custom_header = []

" vim-grepper
nnoremap <silent> <leader>g :Grepper<CR>

" fzf.vim
nnoremap <silent> <C-p> :<C-u>FZF<CR>
let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }
