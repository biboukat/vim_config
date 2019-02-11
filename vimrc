set nocp
set number
set ruler
set laststatus=2
set expandtab   
set tabstop=2

set nowrap
set tw=0
set hlsearch
set incsearch
syntax on
let g:mapleader=','
colorscheme gruvbox
set background=dark
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set path=$PWD/**
"minimap
let g:minimap_highlight='Visual'


call plug#begin('~/.vim/plugged')

"new
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='deus'
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'
Plug 'mxw/vim-jsx'
Plug 'flowtype/vim-flow'
Plug 'w0rp/ale'

"new
Plug 'marijnh/tern_for_vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'pangloss/vim-javascript'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'moll/vim-node'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'ap/vim-css-color'
Plug 'severin-lemaignan/vim-minimap'

"colorschemes
Plug 'morhetz/gruvbox'

call plug#end()

"mapping

"nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
"nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap Ï :Prettier<CR>
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
"map <C-R> :PymodeRun<CR>
"
map <C-k> <ScrollWheelUp> 
map <C-j> <ScrollWheelDown>

"console.log
nmap cll yiwocll<Esc>p 
imap cll console.log();<Esc>==f(a
