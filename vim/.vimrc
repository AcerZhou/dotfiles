syntax on
colo pablo

set number
set laststatus=2
set relativenumber
set ruler
set nocompatible
set showmode
set showcmd
set mouse=a
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set encoding=utf-8
set fileencoding=utf-8
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set spell spelllang=en_au
set noerrorbells
set history=1000
set autoread
set wildmenu
set wildmode=longest:list,full

" Hardcore mode, disable arrow keys.
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
" Allow backspace to delete indentation and inserted text
" i.e. how it works in most programs
set backspace=indent,eol,start
" indent  allow backspacing over autoindent
" eol     allow backspacing over line breaks (join lines)
" start   allow backspacing over the start of insert; CTRL-W and CTRL-U
"        stop once at the start of insert.

filetype plugin indent on
filetype indent on

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4
" ts - show existing tab with 4 spaces width
" sw - when indenting with '>', use 4 spaces width
" sts - control <tab> and <bs> keys to match tabstop

call plug#begin()
Plug 'junegunn/fzf', {'do': { ->fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'airblade/vim-gitgutter'
call plug#end()

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
colorscheme ayu

" go-vim plugin specific commands
" Also run `goimports` on your current file on every save
" Might be be slow on large codebases, if so, just comment it out
let g:go_fmt_command = "goimports"

" Status line types/signatures.
let g:go_auto_type_info = 1

"au filetype go inoremap <buffer> . .<C-x><C-o>

" If you want to disable gofmt on save
" let g:go_fmt_autosave = 0


" NERDTree plugin specific commands
:nnoremap <C-g> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree

" Git Gutter config
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
