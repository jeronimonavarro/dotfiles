set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Mis plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'

"All of your Plugins must be added before the following line
call vundle#end()            " required

"Enable filetype plugins and indent detection
filetype plugin indent on    " required

"Turn on the Wild menu
set wildmenu

"No annoying sound on errors
set noerrorbells visualbell t_vb=

"Eliminating delays on ESC in vim
set timeoutlen=1000 ttimeoutlen=0

"Enable syntax highlighting
syntax on
"set t_Co=256
set background=dark
colorscheme desert

"Set extra options when running in GUI mode
"if has("gui_running")
"   set guioptions-=T
"   set guioptions-=r
"   set guioptions-=m
"   set guioptions-=e
"   set guitablabel=%M\ %t
"endif

"Color numero de linea actual
"hi LineNr ctermfg=Gray

"set relativenumber
"set colorcolumn=85
"set number

"Oculta el buffer si tiene cambios al abrir otro (!)
set hidden
"set history=100

"corta al ancho de la ventana
set wrap  

"no corta palabras enteras en el wrap
set linebreak 
set tabstop=3
set shiftwidth=3
set expandtab
set smartindent
set autoindent

"Resalta resultado de busqueda
set hlsearch

"Busqueda incremental
set incsearch

"Ignore case when searching
set ignorecase

"When searching try to be smart about cases 
set smartcase

set showmatch

"set laststatus=1

"Turn backup and swap off
set nobackup
set noswapfile
set nowb

"Mantiene el cursor 5 lineas de los bordes arriba/abajo
set scrolloff=5

"Toggle modo 'paste' antes y despues de pegar desde
"el clipboard para mantener el identado
set pastetoggle=<F2>

"Splitea a la derecha/abajo por defecto
set splitbelow
set splitright

let mapleader=","

"reopen previously opened file
nnoremap <Leader><Leader> :e#<CR>
nnoremap <Leader><CR> :noh<CR>
"
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>s :bnext<CR>
nnoremap <Leader>a :bprev<CR>
nnoremap <leader>q :bp<CR>:bd #<CR>

nnoremap <Tab> :buffers<CR>:buffer<Space>

"NERDTree #Toggle
map <C-n> :NERDTreeToggle<CR>

"NERDTree #Ignora archivos objeto
let NERDTreeIgnore = ['\.o']

"NERDTree #Close when there's no active buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"IndenLine #Color para marca de indentado
"let g:indentLine_color_term = 238

"" Tell vim to remember certain things when we exit
""  '10  :  marks will be remembered for up to 10 previously edited files
""  "100 :  will save up to 100 lines for each register
""  :20  :  up to 20 lines of command-line history will be remembered
""  %    :  saves and restores the buffer list
""  n... :  where to save the viminfo files
"set viminfo='10,\"100,:20,%,n~/.viminfo
