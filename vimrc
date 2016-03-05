if has("gui_running")
	set guioptions-=T
	if has("gui_gtk2")
		set guifont=Terminus\ 8
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

colorscheme default

call plug#begin('~/.vim/plugged')
Plug 'MattesGroeger/vim-bookmarks'
call plug#end()

:autocmd BufReadPost * :DetectIndent
