set spell spelllang=en_us
set undofile
set encoding=utf-8

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

set ignorecase
set number
set conceallevel=1
set termguicolors
set background=dark

set expandtab
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4

set history=1000

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

colorscheme solarized

autocmd BufEnter * lcd %:p:h

filetype plugin indent on

set undodir=~/.config/nvim/undodir

call plug#begin()

Plug 'vim-scripts/Vimball'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'rust-lang/rust.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'groenewege/vim-less'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/nginx.vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/neocomplcache.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'Raimondi/delimitMate'
Plug 'tmhedberg/SimpylFold'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/nginx.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim'

call plug#end()

let g:javascript_plugin_jsdoc           = 1
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_arrow_function = "⇒"
let g:javascript_conceal_return         = "⇚"

let g:jsx_ext_required = 0

let g:syntastic_check_on_open=1

map <C-E> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']

let g:ycm_autoclose_preview_window_after_completion=1

set foldmethod=indent
set foldlevel=99

au BufRead,BufNewFile *.nginx set ft=nginx
au BufRead,BufNewFile */etc/nginx/* set ft=nginx
au BufRead,BufNewFile */usr/local/nginx/conf/* set ft=nginx
au BufRead,BufNewFile nginx.conf set ft=nginx

au FileType php setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
au FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2
au FileType jsx setlocal expandtab shiftwidth=2 softtabstop=2
au FileType mjs setlocal expandtab shiftwidth=2 softtabstop=2
au FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2

set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
