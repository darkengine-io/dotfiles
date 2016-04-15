if has("gui_running")
	set guioptions-=T
	if has("gui_gtk2")
		set guifont=Terminus\ 8
		set guioptions-=r
		:set guioptions-=m
	elseif has("gui_win32")
		language English_United States
		set guifont=MS\ Gothic
	endif
endif
syntax on
set number
set background=dark
set mouse=a
set ttymouse=xterm2
set ignorecase

set ts=4 sts=0 sw=4 noexpandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

set backspace=indent,eol,start

colorscheme jellybeans
let g:jellybeans_use_gui_italics = 0

call plug#begin('~/.vim/plugged')
Plug 'MattesGroeger/vim-bookmarks'
call plug#end()
