"=============================================================================
"================================ My Vim File ================================
"=============================================================================

"=== Reference Information ===================================================
"stevelosh.com/blog/2010/09/coming-home-to-vim
"terminally-incoherent.com/blog/2012/03/26/how-to-configure-vim


"=== Initial Settings ========================================================
set nocompatible                    "No backwards compatible to VI
filetype off                        "Off required



"=== Vundle Settings =========================================================
set rtp+=~/.vim/bundle/Vundle.vim   "Set runtime path to include Vundle

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'       "Let Vundle manage Vundle
"Plugin 'bling/vim-airline'

Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
"Plugin 'fmoralesc/molokayo'          "Modified Molokai, requires Molokai
"Plugin 'morhetz/gruvbox'             "Colorscheme
"Plugin 'freeo/vim-kalisi'
"Plugin 'altercation/vim-colors-solarized'
"wPlugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
"Plugin 'ervandrew/supertab'
"Plugin 'jedivim'
"wPlugin 'vim-scripts/indentpython.vim'"Indent python when auto does not work
"Plugin 'Valloric/YouCompleteMe'    "Auto completion
"wPlugin 'nvie/vim-flake8'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
"Plugin 'chriskempson/base16-vim'

let python_highlight_all=1

call vundle#end()


"=== Color Management ========================================================
set t_Co=256                        "Use 256 color map
set background=dark                 "Assume dark background
"le base16colorspace=256
colorscheme molokai                 "Use molokai colors
"colorscheme solarized
"colorscheme gruvbox
"let g:rehas256 = 1                  "Special setting for molokai
"let g:solarized_termcolors=256


"=== Files and backups =======================================================
set nobackup                        "No backups
set nowb                            "No backups
set noswapfile                      "No backups
set modelines=0                     "Do not allow modelines



"=== General =================================================================
set history=100                     "VIM remembers 100 commands
syntax on                           "Use highlighting
syntax enable                       "Use highlighting
filetype indent on                  "Use indents
filetype plugin on                  "Use plugins
filetype plugin indent on           "Use plugin indents
set autoread                        "Reload files modified outside vim
set mouse=a                         "Use the mouse as a pointer
set number                          "Display line numbers
set relativenumber                 "Show line numbers relative to current
set encoding=utf-8                  "Use utf-8 as standard encoding
set ffs=unix,dos,mac                "Use Unix file type



"=== Tab and indent ==========================================================
set tabstop=4                       "Make tabs 4 spaces wide
set shiftwidth=4                    "Make tabs 4 spaces wide
set softtabstop=4                   "Backspace deletes 4 spaces
set expandtab                       "Replace tabs with spaces
set autoindent                      "If indented, stay indented



"=== YouCompleteMe Settings ==================================================
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>



"=== Python with virtualenv support ==========================================
"py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
" project_base_dir = os.environ['VIRTUAL_ENV']
" activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
" execfile(activate_this, dict(__file__=activate_this))
"EOF


"=== Statusline ==============================================================
set showmode                        "Show current mode
set showcmd                         "Show commands in statusline
set cmdheight=2                     "Height of command bar
set laststatus=2                    "Always show status line
set wildmenu                        "Turn on wildmenu
set wildignore=*.o,*~,*.pyc         "Ignore compiled files
set wildmode=list:longest           "Expand menu

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

"=== Screen and User Interface ===============================================
set hidden                          "Buffer abandoned when hidden
set ruler                           "Show current position
set textwidth=79                    "Max 79 characters
set wrap                            "Wrap long lines
set colorcolumn=80                  "Make column 80 color so i know
set cursorline                      "Highlight current line
set cursorcolumn                    "Highlight current column
set backspace=indent,eol,start      "Configure backspace
set scrolloff=999                   "Cursor in middle of screen when scrolling
set showmatch                       "Show matching brackets when curser is over
set mat=2                           "Brackets blink for x tenths of second
set novisualbell                    "No sounds on errors
set noerrorbells                    "No sounds on errors
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/



"=== Search Functions ========================================================
nnoremap / /\v
vnoremap / /\v
set ignorecase                      "Ignore case when searching
set smartcase                       "Be smart about cases when searching
set incsearch                       "Search like in modern browers
set hlsearch                        "Highlight search results
set incsearch                       "Incremental search - clear cmd below
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %



"=== Other ===================================================================
"Disable arrow keys, only hjkl work
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

"Remap j and k for lines
nnoremap j gj
nnoremap k gk

"Disable F1 and remap to ESC
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>


