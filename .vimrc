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
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
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
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTree<CR>
:set pastetoggle=<F5> 
let g:tagbar_width = 50 

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py' "YCM配置全局路径
let g:ycm_warning_symbol = '>*'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_confirm_extra_conf = 0 "加载本地配置时不用确认
nnoremap <F3> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>
let g:ycm_key_invoke_completion = "<F2>"

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set nu
set ruler
syntax enable 
syntax on
set cindent
set autoindent
set incsearch
set hlsearch
set ignorecase
set expandtab
set laststatus=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
set cul
set scrolloff=3
set background=dark
set t_Co=256
colorscheme gruvbox 
