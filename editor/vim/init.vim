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
Plug 'Yggdroot/indentLine'
call plug#end()

" Pathogen setup - Note to self: I should probably use only one plugin installer
execute pathogen#infect()

" Some basics
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
<<<<<<< HEAD
	set number relativenumber incsearch

=======
	set number relativenumber
>>>>>>> 8d8ac0d3c6808b1837ef1f55ca299fb8f66bcc0b
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

" identLine configuration
let g:ident_line_char = '|'

" haskell-vim configuration
let g:haskell_enable_quantification = 1

" Personal Commands
	" Open my vim config
	command Config execute ":edit ~/.config/nvim/init.vim"
	map <leader>i :Config<CR>
	" Toggle Nerd Tree
	map <leader>n :NERDTreeToggle<CR>


" LaTeX Macros
" autocmd FileType `filetype` inoremap `macrokey` `stuff to do/write`

" Basic enviroments
autocmd FileType tex inoremap ;doc \begin{document}<Enter><Enter>\end{document}
autocmd FileType tex inoremap ;sec \section{<>}<Enter>\label{sec:Title}<Enter><Enter>
autocmd FileType tex inoremap ;ssec \subsection{<>}<Enter>\label{sec:Title}<Enter><Enter>
autocmd FileType tex inoremap ;cen \begin{center}<Enter><Enter>\end{center}
autocmd FileType tex inoremap ;fig \begin{figure}[h]<Enter>\includegraphics[scale=]{}<Enter>\caption{capt.}<Enter>\label{fig:name}<Enter>\end{figure}


" References
autocmd FileType tex inoremap ;rf \footnote{}<Enter>
autocmd FileType tex inoremap ;rh \href{url}{desc.}<Enter>
autocmd FileType tex inoremap ;rr \ref{sec/fig/eq:name}

" Text formatting
autocmd FileType tex inoremap ;b \textbf{}<Space>(<>)<Esc>
autocmd FileType tex inoremap ;\np \newpage

" Math stuff
