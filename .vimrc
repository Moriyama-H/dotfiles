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
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'tpope/vim-surround'
Plugin 'cohama/lexima.vim'
Plugin 'cocopon/iceberg.vim'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'lambdalisue/fern.vim'
Plugin 'chrisbra/csv.vim'
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
syntax enable
set number
" set background=dark
colorscheme iceberg
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set colorcolumn=120
set hlsearch
set laststatus=2    " show file name
set wildmenu    " show comand list when push tab
set nowrap

autocmd BufRead,BufNewFile *.sage setfiletype python
autocmd BufRead,BufNewFile *.envrc setfiletype sh
" set foldmethod=indent

" set belloff = all
set vb t_vb=
" set text encord
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

" auto-completion
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" open vertical right side
let g:netrw_altv = 1
let g:netrw_preview = 1

nnoremap <C-S-Tab> :tabprevious<CR>
nnoremap <C-Tab> :tabnext<CR>

" set gt/gT command for normal/terminal mode
nnoremap <C-h> gT
nnoremap <C-l> gt
tnoremap <C-h> gT
tnoremap <C-l> gt

nnoremap <C-n> :tabnew<Space>

" sandwich
Plugin 'machakann/vim-sandwich'

" markdown
Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'
set spell
set spelllang=en,cjk
