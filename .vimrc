" Use .vimrc on spesific project
set exrc

" Relative line number
set nu

" No hightlight search
set nohlsearch

" Hide buffer on background
set hidden

" No error bell/sound
set noerrorbells

" No Wrap
set nowrap

" No swap
set noswapfile
set nobackup
set undodir=$HOME/.vim/undodir
set undofile

" Increment search
set incsearch

" Scroll off
set scrolloff=12

" Tab
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Leader key
let mapleader = " "

" Mapping insert mode
imap jj <Esc>
imap jj <Esc>

" Mapping visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Mouse scroll
set mouse=a

" Different Cursor Mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Syntax
syntax on

" Plugins
call plug#begin()
  Plug 'joshdick/onedark.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'chun-yang/auto-pairs'
  Plug 'tpope/vim-commentary'
call plug#end()

" Colorscheme
colorscheme onedark

" Transparent background
hi Normal guibg=NONE ctermbg=NONE

" Lightline configuration
set laststatus=2
let g:lightline = {'colorscheme': 'one'}
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle

" Vim-commentary configuration
noremap <leader>/ :Commentary<cr>
