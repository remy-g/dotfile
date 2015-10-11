set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=/usr/local/share/lilypond/2.18.2/vim/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'bufkill.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Shougo/neocomplete.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-leiningen'
Plugin 'guns/vim-sexp'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'vim-niji'
Plugin 'tfnico/vim-gradle'
Plugin 'tristen/vim-sparkup'
Plugin 'othree/yajs.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'junegunn/goyo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colo molokai
set enc=utf-8
let $LANG='en'

set guifont=InputMono:h12
set guioptions-=m guioptions-=T

set number
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

set list
set listchars=tab:»\ ,trail:-

set hlsearch
set incsearch

syntax on
set laststatus=2

let mapleader=','
let maplocalleader=','

" powerline
set rtp+=$PIP_REPO/powerline/bindings/vim

" fugitive
nmap <F9> :Gstatus<CR>

" NERDTree
let g:nerdtree_tabs_open_on_console_startup=0
nmap <F7> :NERDTreeToggle<CR>

let g:neocomplete#enable_at_startup = 1

" eclim
let g:EclimCompletionMethod = 'omnifunc'
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.java = '\%(\h\w*\|)\)\.\w*'

" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

" easymotion
map <Space> <Plug>(easymotion-prefix)

" tagbar
set updatetime=200
let g:tagbar_autoshowtag=1
nmap <F8> :TagbarToggle<CR>

" sparkup
let g:sparkupNextMapping='<C-l>'
let g:sparkupDoubleQuote=1

" goyo
nnoremap <Leader>z :Goyo<CR>

" vi: se et ts=2 sw=2:
