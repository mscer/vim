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
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tomasr/molokai'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'Raimondi/delimitMate'
Plugin 'octol/vim-cpp-enhanced-highlight'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'


" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'


" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'



" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"NERDTree快捷键映射
let mapleader =';'

nmap <F5> :NERDTreeToggle<cr>
nnoremap <Leader>lw <c-w>l
nnoremap <Leader>hw <c-w>h
nnoremap <Leader>kw <c-w>k
nnoremap <Leader>jw <c-w>j
let NERDTreeWinSize=32
let NERDTreeWinPos='right'
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1


"颜色框架
"set background=dark
"colorscheme molokai

"ycm命令
let g:ycm_python_binary_path='python'
"nmap <F7> :YcmForceCompileAndDiagnostrics<cr>
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"跳转定义和声明
let g:ycm_goto_buffer_command = 'horizontal-split'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F7> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

" 开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files=1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 输入第2个字符开始补全
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1    
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<M-;>'

nmap <silent> <Leader>sw :FSHere<cr>

set nu
set incsearch
set ignorecase
set nocompatible
set wildmenu
set laststatus=2
set ruler
set cursorline
set hlsearch
"语法高亮
syntax enable
syntax on

"缩进
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent



autocmd BufWritePost $MYVIMRC source $MYVIMRC
