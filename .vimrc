set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Mis plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'
Plugin 'acoustichero/goldenrod.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'veloce/vim-aldmeris'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable filetype plugins and indent detection
filetype plugin indent on    " required
"
" Turn on the Wild menu
set wildmenu

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Deshabilita Background Color Erase (BCE)
set t_ut=

" Enable syntax highlighting
syntax on
set t_Co=256
"set termguicolors
set background=dark
"let g:gruvbox_italic=1
colorscheme wal
"let g:aldmeris_termcolors = "tango"
"colorscheme PaperColor
"colorscheme goldenrod 
"set gruvbox_contrast_dark

" Set extra options when running in GUI mode
if has("gui_running")
   colorscheme goldenrod
   set guioptions-=T
   set guioptions-=r
   set guioptions-=m
   set guioptions-=e
   set guitablabel=%M\ %t
endif

"hi LineNr ctermfg=Gray
"hi StatusLine ctermfg=White ctermbg=none
"highlight Comment cterm=italic

"set relativenumber
"set colorcolumn=90
"set number

" oculta el buffer si tiene cambios al abrir otro (!)
set hidden
set history=100

set wrap  "corta al ancho de la ventana
set linebreak   "no corta palabras enteras en el wrap
set tabstop=3
set shiftwidth=3
set expandtab
set smartindent
set autoindent

set hlsearch
set incsearch

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

set showmatch

set laststatus=1

" Solo actualiza la pantalla cuando se tipea una accion
set lazyredraw
" Le mete BOOST
set ttyfast

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Mantiene el cursor 5 lineas de los bordes arriba/abajo
set scrolloff=5

" Toggle modo 'paste' antes y despues de pegar desde
" el clipboard para mantener el identado
set pastetoggle=<F2>

" Splitea a la derecha/abajo
set splitbelow
set splitright

let mapleader=","

"reload config file
map <leader>s :source ~/.vimrc<CR>

"reopen previously opened file
nnoremap <Leader><Leader> :e#<CR>
nnoremap <Leader><CR> :noh<CR>

nnoremap <Leader>d :bd<CR>
nnoremap <Leader>s :bnext<CR>
nnoremap <Leader>a :bprev<CR>
nnoremap <leader>q :bp<CR>:bd #<CR>

nnoremap <Tab> :buffers<CR>:buffer<Space>

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
" Ignora archivos objeto
let NERDTreeIgnore = ['\.o']

" Color para marca de indentado
let g:indentLine_color_term = 238

" Close NERDTree when there's no active buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" Funcion que restaura a la ultima posicion del cursor
"function! ResCur()
"   if line("'\"") <= line("$")
"      normal! g`"
"      return 1
"   endif
"endfunction
" autocmd que llama a ResCur
"augroup resCur
"   autocmd!
"   autocmd BufWinEnter * call ResCur()
"augroup END
