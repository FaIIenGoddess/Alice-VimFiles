 """""""""""""""""""""""""""""""""""""""
"   __     _____ __  __ ____   ____     "
"   \ \   / /_ _|  \/  |  _ \ / ___|    "
"    \ \ / / | || |\/| | |_) | |        "
"     \ V /  | || |  | |  _ <| |___     "
"      \_/  |___|_|  |_|_| \_\\____|    "
"                                       "
 """""""""""""""""""""""""""""""""""""""
" ALICE'S VIM CONFIGURATION FILE!!!

" PLUGINS ---------- {{{
call plug#begin('~/.vim/plugged')
        
     " Fonts.
     Plug 'powerline/powerline-fonts'
     " Themes.
     Plug 'sainnhe/everforest'
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
" }}}

" EVERFOREST THEME ---------- {{{
" Important!!
if has('termguicolors')
      set termguicolors
endif

" Theme.
" Availale values: light, dark
set background=dark

" Contrast.
" Available values: 'hard', 'medium', 'soft'
let g:everforest_background = 'medium'

" Line number constrast
" Available values: 'low', 'high'
let g:everforest_ui_contrast = 'low'

" For Transparent Background.
let g:everforest_transparent_background = 1

" For italics.
let g:everforest_enable_italic = 1

" For better performance
let g:everforest_better_performance = 1

colorscheme everforest

" }}}

" LIGHTLINE CONFIGURATION ---------- {{{
" Lightline colorscheme
let g:lightline = {
\ 'colorscheme': 'everforest',
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

" }}}

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

" }}}

