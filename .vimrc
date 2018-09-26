" 设置Vundle.vim插件
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 添加插件方式
" 添加 Plugin 'author/pluginName'
" Vundle会自动调用git下载 
" 打开vim 输入命令：PluginInstall 进行安装
" 更新插件时输入命令：Plugin Install！
" 列出插件，输入命令：PluginList
" 卸载，先删除.vimrc中的插件配置， 然后执行:PluginClean

Bundle 'bling/vim-airline'
set laststatus=2

Bundle 'scrooloose/nerdtree'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeWinPos='right'
let NERDTreeWinSize = 30
let NERDTreeShowHidden = 1
map <F2> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree

Bundle 'majutsushi/tagbar'
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
map <F3> :Tagbar<CR>
" 默认开启C/Cpp的tags
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen() 

Bundle 'jelera/vim-javascript-syntax'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'leafgarland/typescript-vim'
Bundle 'Valloric/YouCompleteMe'



" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
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


"显示行号
set nu 
"启动时隐去提示
set shortmess=atI
"语法高亮
syntax on 
" 不需要备份
set nobackup
" tab 缩进
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
" 自动对齐
set autoindent
set smartindent
set background=dark

" -----------------------------
" YouCompleteMe插件配置
" -----------------------------
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-/>'
let g:ycm_python_binary_path = '/usr/bin/python3'
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
" -----------------------------



