set number relativenumber signcolumn=yes
set hidden noshowmode shortmess+=c
set nobackup nowritebackup undofile
set updatetime=150

set inccommand=nosplit
set mouse=a

" spaces
" set expandtab shiftwidth=4 tabstop=4

" tabs
set autoindent noexpandtab tabstop=4 shiftwidth=4

let mapleader = " "

nnoremap <silent> <esc><esc> <esc>:noh<cr><esc>
nnoremap <silent> <tab> :bn<cr>
nnoremap <silent> <s-tab> :bp<cr>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <Leader>l :ls<CR>:b<space>

nmap <silent> <c-s> :w<cr>
imap <silent> <c-s> <esc>:write<cr>a

nmap <silent> <Leader>rr :so %<cr>

" tab characters >y< 
set list listchars=tab:>-

" Disable matchit
let g:loaded_matchit = 1

filetype plugin on

set omnifunc=syntaxcomplete#Complete

autocmd FileType fish compiler fish
autocmd BufNewFile,BufRead *.pcss set filetype=postcss
