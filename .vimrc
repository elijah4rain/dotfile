set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree.git'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tmux-plugins/vim-tmux-focus-events'
" Plugin 'frazrepo/vim-rainbow'     "different colors for parenthesis
Plugin 'mhinz/vim-signify'        "git change shown on lines
Plugin 'jiangmiao/auto-pairs'     "auto generate parenthesis
Plugin 'othree/xml.vim'           "xml auto tag
Plugin 'tpope/vim-surround'       "surround texts with anything



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" append the following for youcompleteme for c++
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" append the following for youcompleteme for python
nnoremap <C-P> :YcmCompleter GoTo<CR>
let g:ycm_python_binary_path = 'python'

" Remap <Leader> to comma
let mapleader=","

" Remap colon to semicolon for easier :w etc
nnoremap ; :

" Press F2 to switch to paste mode to avoid autoindents
syntax on
syntax enable
set hlsearch
set background=dark

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0 " ctrlp search path should not change after initial vim launch

" NERD commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" remap <leader>cc to ,cc and allow longer time
let mapleader=" "
"set timeout timeoutlen=1500

" Automatically reload file if changed on disk
set autoread

" au CursorHold * checktime
au FocusGained,BufEnter * checktime
au CursorHold,CursorHoldI * checktime

" Syntax highlighting settings
autocmd BufNewFile,BufRead *.launch set syntax=xml
set cursorline

" set cursorcolumn
" Set relative line numbering
set relativenumber
set autoread    "If file updates, load automatically
set showmatch   "Show matching brackets

" Vim-airline
:set laststatus=2 " Enable by default
"let g:airline_theme='solarized'
"let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1 " Adds nice powerline fonts to airline bar
"let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 4)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 4)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" comfortable-motion
" let g:comfortable_motion_interval=150.0/60
" let g:comfortable_motion_friction =20
" let g:comfortable_motion_air_drag =5
" call g:comfortable_motion#flick(1600)
" Open a NERDTree automatically when Vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" Close Vim if the only window left open is a NERDTree
"" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"" Spellchecking
"set spell spelllang=en_us
"set complete+=kspell
"autocmd BufRead,BufNewFile *.md setlocal spell
"autocmd BufRead,BufNewFile *.txt setlocal spell
"set ignorecase " make searches case insensitive by default

" Toggle NERDTree like Sublime's sidebar
nmap <Leader>kb :NERDTreeToggle<CR>
" :nnoremap <C-Tab> :bnext<CR>
" :nnoremap <C-S-Tab> :bprevious<CR>
map <silent> <C-n> :NERDTreeFocus<CR> " Switch focus to nerdtree shortcut

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" configure editor with tabs and nice stuff...
set incsearch
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set softtabstop=4
" set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
" make backspaces more powerful
set backspace=indent,eol,start
" set ruler                           " show line and column number
syntax on               " syntax highlighting
"set showcmd             " show (partial) command in status line
" Default vim always loads PEP8 python style file, which sets tabs to size 4. So undo it here.
augroup python
    autocmd!
    " Real men always use real tabs, and I like it four spaces wide.
    autocmd FileType python setlocal ts=4 sts=4 sw=4
augroup end

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0

"vim-rainbow
let g:rainbow_active = 1   

"nerd tree open close toggle shortcut"
nmap <c-n> :NERDTreeToggle<CR>

"solve slow down of git signify but the main problem was to disable rainbow parenthesis
let g:signify_vcs_list = ['git']
let g:signfiy_update_on_bufenter=0
set signcolumn=yes

"recognize non-xml (.launch) as .xml
autocmd BufEnter *.launch :setlocal filetype=xml

imap jk <esc>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

"git fugutive shortcut
nmap <leader>gg :G<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>j <c-w>w
nmap <leader>k <c-w>W




"====================="
" FROM JELLYBEANS VIMRC
"====================="
filetype plugin indent on
colorscheme jellybeans

set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

set cursorline
set cursorcolumn
hi CursorLine   ctermbg=8 ctermfg=15 "8 = dark gray, 15 = white
hi CursorColumn ctermbg=8 ctermfg=15 "8 = dark gray, 15 = white
hi Cursor ctermbg=15 ctermfg=8

:hi TabLineFill ctermfg=LightRed ctermbg=DarkGray
:hi TabLine ctermfg=White ctermbg=DarkGray
:hi TabLineSel ctermfg=Red ctermbg=LightGray cterm=bold

set title

"set autoindent    " always set autoindenting on
"set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  " case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  " shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set relativenumber " set relative number
set mouse=a "enable mouse scroll"
