""""""""""""""""""""""
" my vim config
" zhang zhao
""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
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
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 一般设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 设定默认解码 
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限 
set nocompatible

" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

" 语法高亮 
syntax on

" 设置字体
set guifont=Monaco:h14

" 开启行号显示
set number

"下面两行在进行编写代码时，在格式对起上很有用；
"第一行，vim使用自动对起，也就是把当前行的对起格式应用到下一行；
"第二行，依据上面的对起格式，智能的选择对起方式，对于类似C语言编
"写上很有用
set autoindent
set smartindent

"查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
"个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
"次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
"时，别忘记回车
set incsearch

" 高亮当前行
" set cursorline

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI

" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行 
set laststatus=2

" 制表符为4 
set tabstop=4
set expandtab

" 统一缩进为4 
set softtabstop=4 
set shiftwidth=4

" 在c,c++,python文件中用空格代替制表符
autocmd FileType c,cpp,python set shiftwidth=4 | set expandtab

" 侦测文件类型 
filetype on

" 载入文件类型插件 
filetype plugin on

" 为特定文件类型载入相关缩进文件 
filetype indent on

" 括号自动补全
" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap { {}<ESC>i
" inoremap < <><ESC>i

" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

" 搜索忽略大小写
set ignorecase

" 自动保存
set autowrite

" 设置当文件被改动时自动载入
set autoread

" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 不自动换行
set nowrap
