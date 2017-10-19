if has("gui_running")
	set guioptions-=T
	if has("gui_gtk3")
		set guifont=xos4\ Terminus\ 8
		set guioptions-=r
		set guioptions-=m
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

let g:jellybeans_use_gui_italics = 0
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

call plug#begin('~/.vim/plugged')
Plug 'MattesGroeger/vim-bookmarks'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
highlight clear SignColumn

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_theme = 'jellybeans'

let g:ctrlp_cmd = 'CtrlPBuffer'

let g:airline_extensions = ['tabline']
let g:airline_section_z = ''
set noshowmode

nnoremap <silent> <C-K> :bn<CR>
nnoremap <silent> <C-J> :bp<CR>
