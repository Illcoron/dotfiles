" set line numbers
set number
set relativenumber

" Keybindings
inoremap jj <Esc>
inoremap kk <bs>

" Cursor
set cursorline
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Set tabstop length
set tabstop=4
set shiftwidth=4

" Linebreak after x characters
set textwidth=80

" Center active line
set scrolloff=999

" Syntaxhighlighting
syntax on

" Vimdiff
highlight DiffAdd    ctermbg=green  ctermfg=white
highlight DiffDelete ctermbg=red    ctermfg=white
highlight DiffChange ctermbg=blue   ctermfg=white
highlight DiffText   ctermbg=yellow ctermfg=white

" Others
set mouse=v
set expandtab
set ttyfast
set hlsearch
set smartindent
set autoindent

" Enable filetype detection
filetype on

" Filetype specific settings
autocmd FileType html,css,javascript setlocal tabstop=2 shiftwidth=2
autocmd FileType c setlocal shiftwidth=8 tabstop=8 et
autocmd FileType python setlocal shiftwidth=4 tabstop=4 et textwidth=0
autocmd FileType markdown setlocal shiftwidth=4 tabstop=4

" Vim Plugin Manager - plug.vim

call plug#begin()

    Plug 'jasonccox/vim-wayland-clipboard'

call plug#end()
