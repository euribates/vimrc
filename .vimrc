set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=79  " lines longer than 79 columns will be broken
set encoding=utf-8
set backspace=indent,eol,start
set ignorecase
set smartcase
set smarttab
set softtabstop=4    
set autoindent
set shiftround

set mouse=a

scriptencoding utf-8 " basic

set laststatus=2 statusline=%-30f\ %m\ %20{&fileencoding?&fileencoding:&encoding}\ line:%l\ col:%c

let mapleader=","
set timeout timeoutlen=1500

" Save
nnoremap <C-s> :w!<CR>
vnoremap <C-s> <Esc>:w!<CR>
inoremap <C-s> <Esc>:w!<CR>

execute pathogen#infect()
filetype plugin indent on
syntax on

set guifont=Fira\ Code\ 14

set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility

set showmatch
set magic

" Don't lose clipboard when pasting
vnoremap p pgvy

" Change dir to current path
command! ChangeDir :cd %:p:h<CR>

" Buffers
nnoremap <C-j> :bn<CR>
nnoremap <C-k> :bp<CR>

"" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"" YouCompleteMe
let g:ycm_key_list_select_completion=[] " disables the tab key for YCM
let g:ycm_key_list_previous_completion=[] " disables the tab key for YCM

" NerdTree settings
let g:NERDTreeWinPos = "right"

nnoremap <silent> <C-S> :<C-u>update<CR>

vmap <leader>mc !boxes -d pound-cmt<CR>
nmap <leader>mc !!boxes -d pound-cmt<CR>
vmap <leader>xc !boxes -d pound-cmt -r<CR>
nmap <leader>xc !!boxes -d pound-cmt -r<CR>

""split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:showmarks_enable = 1
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

"" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"

"" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 0

"" Tagbar
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

"" zfz
"set rtp+=~\.fzf
map <C-f> <Esc><Esc>:Files!<CR>
inoremap <C-f> <Esc><Esc>:BLines!<CR>
map <C-g> <Esc><Esc>:BCommits!<CR>
"" https://www.youtube.com/watch?v=UM4ks_jWwfU

"" Skeletons
autocmd BufNewFile *.py 0r ~/.vim/skeletons/python.py | $
colorscheme darkblue

" airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 

