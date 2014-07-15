if &shell =~# 'fish$'
    set shell=sh
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'bling/vim-airline'
Plugin 'dag/vim-fish'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/powerline'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-bufferline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'thoughtbot/vim-rspec'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'moll/vim-node'
Plugin 'tpope/vim-rails'
Plugin 'godlygeek/tabular'
Plugin 'walm/jshint.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
Plugin 'wavded/vim-stylus'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tomtom/tcomment_vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'goatslacker/mango.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle 'mileszs/ack.vim'
Plugin 'marcus/vim-mustang'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Bundle 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Slava/tern-meteor'
Plugin 'plasticboy/vim-markdown'
Bundle 'tpope/vim-rake'
Plugin 'csexton/jekyll.vim'
Plugin 'parkr/vim-jekyll'
Plugin 'marijnh/tern_for_vim'
Bundle 'Yggdroot/indentLine'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/unite.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
syntax enable

color jellybeans

let g:airline_powerline_fonts = 1

set list
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

set tabstop=2
set laststatus=2
set cursorline
set cursorcolumn
set clipboard=unnamed
let g:mustache_abbreviations = 1
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
