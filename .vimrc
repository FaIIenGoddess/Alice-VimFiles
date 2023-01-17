""""""""""""""""""""""""""""""""""""
" __     _____ __  __ ____   ____  "
" \ \   / /_ _|  \/  |  _ \ / ___| "
"  \ \ / / | || |\/| | |_) | |     "
"   \ V /  | || |  | |  _ <| |___  "
"    \_/  |___|_|  |_|_| \_\\____| "
""""""""""""""""""""""""""""""""""""
" ALICE'S VIM CONFIGURATION FILE!!!

" PLUGINS ---------- {{{
call plug#begin('~/.vim/plugged')
        
     " Fonts.
     Plug 'powerline/powerline-fonts'
     " Themes.
     Plug 'morhetz/gruvbox'
     " Status bar lightline.
     Plug 'itchyny/lightline.vim'
     " Color preview.
     Plug 'chrisbra/Colorizer'
     " Language Packs.
     Plug 'fladson/vim-kitty'
     Plug 'sheerun/vim-polyglot'
     " Git branch function.
     Plug 'itchyny/vim-gitbranch'

call plug#end()
" ---------- }}}

" GRUVBOX THEME ---------- {{{
" Important!!
if has('termguicolors')
      set termguicolors
endif

set background=dark

" Contrast.
let g:gruvbox_contrast_dark = 'medium'

" Transparent Background.
let g:gruvbox_transparent_bg = 1

" For italics.
let g:gruvbox_italic = 1

" For bold
let g:gruvbox_bold = 1

colorscheme gruvbox
" ---------- }}}

" LIGHTLINE CONFIGURATION ---------- {{{
" Lightline colorscheme
let g:lightline = {
\ 'colorscheme': 'gruvbox',
\ 'active': {
\     'left': [ [ 'mode', 'paste' ],
\               [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
\
\     'right': [ [ 'wpercent' ],
\                [ 'linerow' ],
\                [ 'fileencoding', 'filetype' ] ]
\ },
\ 'component': {
\     'linerow': 'row: %l | col: %c',
\     'wpercent': 'percent %p%%'
\ },
\ 'component_function': {
\     'gitbranch': 'gitbranch#name'
\ },
\}

" Show lightline on the second to lastline.
set laststatus=2
" ---------- }}}

" VIM CONFIGURATION SETTINGS ---------- {{{
" Disable compatability with vi.
set nocompatible

" Syntax highlighting.
syntax on

" Line numbering.
set number

" Set tab width
set tabstop=4

" Automatically turn tabs into spaces.
set expandtab

" Use highlight during a search.
set hlsearch

" Highlight matching characters while searching.
set incsearch

" Show matching words during a search.
set showmatch

" Ignore capital letters while searching.
set ignorecase

"Overide the ignore case if searching for capiatal letters.
set smartcase

" Disable vim mode
set noshowmode
" ---------- }}}
