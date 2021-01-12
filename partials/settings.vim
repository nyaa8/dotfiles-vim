set number relativenumber
set shortmess+=c list hlsearch incsearch
set hidden undofile
set inccommand=nosplit mouse=a

set encoding=utf-8
set smarttab autoindent tabstop=4 shiftwidth=4

set completeopt=longest,menuone
set omnifunc+=syntaxcomplete#Complete

inoremap <expr> <silent> <C-Space> pumvisible() ? "" : "\<C-x><C-o>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"

let mapleader = " "

nnoremap <silent> <Esc><Esc> <Esc>:noh<CR><Esc>
nnoremap <silent> <Tab> :bn<CR>
nnoremap <silent> <S-Tab> :bp<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <Leader>l :ls<CR>:b<Space>

nmap <silent> <C-s> :w<CR>
imap <silent> <C-s> <Esc>:write<CR>a

filetype plugin on
syntax enable

autocmd FileType fish compiler fish
