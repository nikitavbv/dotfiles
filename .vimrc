" theme
let g:dracula_colorterm = 0

colorscheme nord
syntax on
set background=dark

" tabs = 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" indentation
set autoindent
set smartindent

" encoding
set encoding=utf-8
set termencoding=utf-8

" ignore case when searching
set ignorecase
set hlsearch
set incsearch
set cursorline

set nu
set relativenumber

execute pathogen#infect()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <F6> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

command Cargob terminal cargo build
