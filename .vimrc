" Improved
set nocompatible

" Just the mouse behaviour. It's default.
behave mswin

" Useful stuff found in vimrc_example.vim.
set backspace=indent,eol,start
set history=50
set number
set ruler
set showcmd
set incsearch

" Other useful stuff
color desert
set autoindent
set relativenumber
set ignorecase
set cursorline
set nowrap

" Tab options
set tabstop=8      " real tabs are displayed as 8 spaces
set expandtab      " tabbing while editing inserts spaces. How many?
set softtabstop=4  " ... 4
set shiftwidth=4   " 4 spaces inserted by >>. used by autoindent.

"TODO: Check out what these do.
set encoding=utf-8

" Remember whats occasionally useful
"set keymap=greek_utf-8

" This is very practical indeed
noremap <Space> gg

" Fill closing 'parens'. No more cause of surround!
"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap { {}<Left>
"inoremap " ""<Left>
"inoremap ' ''<Left>
"inoremap ` ``<Left>

" Just for safety...
nnoremap ZZ <nop>
nnoremap ZQ <nop>

" Getting here
nnoremap <leader>rc :source $MYVIMRC
nnoremap <leader>grc :source $MYGVIMRC
nnoremap <leader>S :colorscheme solarized

" For fortran
"let fortran_fold=1 seems laggy
"set foldmethod=syntax
let fortran_free_source=1

" As required by fortran parameters. See :help fortran
syntax on

" For LaTeX
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf= 'xelatex -interaction=nonstopmode $*'

" For VIm-Airline
set laststatus=2
let g:airline_theme = 'kolor'
