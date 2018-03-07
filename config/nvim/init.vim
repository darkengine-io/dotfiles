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
set ignorecase

set ts=4 sts=0 sw=4 noexpandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
au BufNewFile,BufRead *.go setlocal noexpandtab ts=4 sw=4 sts=4

set backspace=indent,eol,start

let g:jellybeans_use_gui_italics = 0
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:deoplete#enable_at_startup = 1

call plug#begin('~/.config/nvim/plugged')
Plug 'MattesGroeger/vim-bookmarks'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
call plug#end()
highlight clear SignColumn

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_theme = 'jellybeans'

let g:ctrlp_map = '<c-o>'
let g:ctrlp_cmd = 'CtrlPBuffer'

let g:airline_extensions = ['tabline']
let g:airline_section_z = ''
set noshowmode

let mapleader = ' '

nnoremap <silent> <Leader>j :bn<CR>
nnoremap <silent> <Leader>k :bp<CR>
