set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'KabbAmine/zeavim.vim'
" autorun dla nerdtree
" autocmd VimEnter * NERDTree

call vundle#end()
filetype plugin indent on
syntax on

set t_Co=256

"set background=light
"colorscheme PaperColor



" }}}
" Plugin settings {{{
" NERDTree{{{
noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

" }}}
" Airline {{{
"
let g:airline_powerline_fonts = 1
set noshowmode
set laststatus=2

let g:airline_theme = 'papercolor'
  if !exists('g:airline_symbols')
	let g:airline_symbols = {}
  endif
  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
  " }}}
" }}}
" Functions {{{

" Line Return {{{

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit, and Steve Losh
augroup line_return
    au!
    au BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\     execute 'normal! g`"zvzz' |
	\ endif
augroup END

" }}}

" }}}
" Options {{{
set encoding=utf-8
set colorcolumn=80
set background=dark
colorscheme PaperColor
set tabstop=4
set shiftwidth=4
set mouse=a
set nowrap
set backspace=indent,eol,start
set listchars=tab:▸\ ,eol:¬,trail:■,extends:»,precedes:«
set list
set noswapfile
set nobackup
set showcmd
set showmatch
set rnu
set foldenable
set foldmethod=marker
set cursorline
set wildmenu
set wildmode=longest:full
au FocusLost * :wa " save when focus lost

" Searches
set hlsearch
set incsearch
set ignorecase
set smartcase

set autoindent
set scrolloff=4
 "" }}}
" Mappings {{{

inoremap <leader><leader>  <Esc>l
inoremap <leader>w <esc>:w<cr>a
inoremap <leader>q <esc>:wq<cr>

inoremap <S-Down> <CR><Esc>O
nnoremap <CR> 0i<CR><Esc>
nnoremap ; :
nnoremap <space> za
nnoremap <leader><space> :nohlsearch<CR>
nnoremap q :wq!<cr>

" Easy movements
" By the way its much more easier to remember this way
nnoremap H ^
nnoremap L $
nnoremap J L
nnoremap K H

" better scrolling
 nnoremap <C-j> <C-d>
 nnoremap <C-k> <C-u>

" Matching the bash terminal behavior
nnoremap <C-a> 0

" browser like behaviour
nnoremap <C-Tab> gt
nnoremap <C-S-Tab> gT


" move vertically by visual line
nnoremap j gj
nnoremap k gk
"}}}
" Quick editing ----------------------------------------------------------- {{{

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>ez :vsplit ~/.zshrc<cr>4j

" }}}

