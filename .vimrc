set nocompatible              " be iMproved, required
filetype off                  " required

" java syntax

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'elixir-editors/vim-elixir'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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


set backspace=indent,eol,start
set number
set hlsearch
set clipboard=unnamed
set tags=.git/tags;$HOME       " consider the repo tags first, then
                               " walk directory tree upto $HOME looking for tags " note `;` sets the stop folder. :h file-search

set hlsearch                   " highlight search
set ignorecase                 " be case insensitive when searching
set smartcase                  " be case sensitive when input has a capital letter


" Formatting "{{{
set wrap
set textwidth=0                " Don't wrap lines by default

set tabstop=2                  " tab size eql 2 spaces
" set softtabstop=2
set shiftwidth=2               " default shift width for indents
set expandtab                  " replace tabs with ${tabstop} spaces
set smarttab                   "

set backspace=indent
set backspace+=eol
set backspace+=start

set autoindent
set cindent
set indentkeys-=0#            " do not break indent on #

let mapleader=" "
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>
imap jj <Esc>
nmap <tab> <c-w>w
map ss :w <cr>
map qq :q <cr>

nnoremap <leader>f :Ag <cr>
nnoremap <leader>n :NERDTreeToggle <cr>
noremap <leader>mv :vsplit <cr>
noremap <leader>ms :split <cr>

" TEST
nnoremap <leader>tt :TestFile <cr>
nnoremap <leader>tn :TestNearest <cr>
nnoremap <leader>tl :TestLast <cr>

" Make Control-direction switch between windows (like C-W h, etc)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

syntax on                      " enable syntax

" set synmaxcol=250              " limit syntax highlighting to 128 columns

set mouse=a "enable mouse in GUI mode
set mousehide                 " Hide mouse after chars typed

" if has('gui_running')
"   set guioptions=cMg " console dialogs, do not show menu and toolbar

"   " Fonts
"   " :set guifont=* " to launch a GUI dialog
"   if has('mac')
"     if has('macligatures')
"       set antialias macligatures guifont=Fira\ Code\ Light:h13 " -> <=
"     else
"       set noantialias guifont=Andale\ Mono:h14
"     end
"   set fuoptions=maxvert,maxhorz ",background:#00AAaaaa else
"   set guifont=Terminus:h16
"   end
" endif

if has('mac')

  if has('gui_running')
    set macmeta
    end

    " map(range(1,9), 'exec "imap <D-".v:val."> <C-o>".v:val."gt"')
    " map(range(1,9), 'exec " map <D-".v:val."> ".v:val."gt"')

    " Copy whole line
    nnoremap <silent> <D-c> yy

    " close/delete buffer when closing window
    map <silent> <D-w> :bdelete<CR>
  endif


filetype off
runtime macros/matchit.vim
" set rtp+=~/.vim/bundle/vundle

" call vundle#rc()

" Plugin 'gmarik/vundle' " let Vundle manage Vundle

" Colorscheme
" Plugin 'tomasiser/vim-code-dark'
" Plugin 'chriskempson/base16-vim'
" Plugin 'NLKNguyen/papercolor-theme'
" Plugin 'gmarik/ingretu'
" colorscheme base16-default-dark
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
if (has("termguicolors"))
  set termguicolors
endif

Plugin 'gmarik/sudo-gui.vim'
Plugin 'janko-m/vim-test'
Plugin 'scrooloose/nerdtree'

" Generic Programming Support 
Plugin 'maksimr/vim-jsbeautify'
Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'

" html+eex
Plugin 'sheerun/vim-polyglot'
" php
" Plugin 'stanangeloff/php.vim'

" Markdown Syntax Support
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END


filetype plugin indent on    
