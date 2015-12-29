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

set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab smarttab smartindent

set backspace=indent,eol,start

colorscheme default
