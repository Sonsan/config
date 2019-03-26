let mapleader = "."

" Plugged setup
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" Pathogen setup - Note to self: I should probably use only one plugin installer
execute pathogen#infect()

" Some basics
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
	" autocomplete
		set wildmode=longest,list,full

" Disable auto block comment
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Remap Split
	set splitbelow splitright
	map <C-Down> <C-W>j
	map <C-Up> <C-W>k
	map <C-Left> <C-W>h
	map <C-Right> <C-W>l

" Start goyo mode
	map <leader>g :Goyo \| set linebreak<CR>

" Check shellscript for errors
	map <leader>s : !clear && shellcheck %<CR>

" Delete whitespaces on save
	autocmd BufWritePre * %s/\s\+$//e

" haskell-vim configuration
let g:haskell_enable_quantification = 1

" Personal Commands
	" Open my vim config
	command Config execute ":edit ~/.config/nvim/init.vim"
	map <leader>i :Config<CR>
	" Toggle Nerd Tree
	map <leader>n :NERDTreeToggle<CR>
