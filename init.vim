let mapleader = ","

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber

" autocomplete
	set wildmode=longest,list,full

" Disable auto block comment
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Split configuration
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
    
