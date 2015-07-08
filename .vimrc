" ~/.vimrc

" This is viMproved
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
syntax on
set autoindent

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

" These are for practicing. Should no remain for long...
" nnoremap j <nop>
" nnoremap k <nop>
" nnoremap h <nop>
" nnoremap l <nop>
" Training-Reminder List
let trs = ["Training-Reminder List:", ".", ";", "m", "i_CTRL-O"]
nmap <Space> gg:echo join(trs, ' ')


" Just for safety...
nnoremap ZZ <nop>
nnoremap ZQ <nop>

nnoremap <leader>rc :source $MYVIMRC
nnoremap <leader>grc :source $MYGVIMRC

" For LaTeX
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf= 'xelatex -interaction=nonstopmode $*'
