"----------Plugin Settings----------"

" If vim-plug is not installed, install it on vim startup
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" :PlugInstall to install these if not installed already
call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
Plug 'whatyouhide/vim-gotham'
Plug 'preservim/nerdtree'
Plug 'itspriddle/vim-shellcheck'
call plug#end()

"----------General Settings----------

set nocompatible " Use Vim mode
set number " Display line numbers
set background=dark " Using a dark background
set backspace=indent,eol,start " Allow backspacing over autoindent, linebreaks, and start of insert action
syntax on " Enable syntax highlighting
set formatoptions=tcroq " Vim default, also continue comments in block
let mapleader = "," " Map <leader> to ,

" Turn on the Wild menu
set wildmenu

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Ignore case when searching
set ignorecase

set smartcase " When searching try to be smart about cases


" ----- Search Settings -----
" start searching as it is typed
set incsearch
" Highlight search patterns
set hlsearch

"----------Indentation Settings----------

set autoindent " Keep same indentation as current line


"----------Tab/Space Settings----------

" 4 spaces to a tab, even when editing and autoindenting
" Also replace tabs with spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"----------Mappings----------

" Map Y to act like D and C
" Basically yank until EOL rather than act as yy
nnoremap Y y$ 

" Hate getting stuck in macro record mode when trying to quit
" So disable the options to use them
nnoremap q <Nop>
nnoremap @ <Nop>

" Constantly am still pressing Shift when trying to save
cnoremap W w
cnoremap Q q
cnoremap Wq wq
cnoremap WQ wq

" NERDTree mappings
nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
