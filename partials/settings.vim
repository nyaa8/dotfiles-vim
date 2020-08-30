set number relativenumber signcolumn=yes
set hidden noshowmode shortmess+=c
set nobackup nowritebackup undofile
set updatetime=150

set inccommand=nosplit
set mouse=a

nnoremap <silent> <s-tab> :b#<cr>
nnoremap <silent> <esc><esc> <esc>:noh<cr><esc>
nnoremap <silent> <tab> :bn<cr>

nmap <silent> <c-s> :w<cr>
imap <silent> <c-s> <esc>:write<cr>a

nmap <silent> <Leader>rr :so %<cr>

" tab characters
set list listchars=tab:>-

" Sneak.vim
let g:sneak#label = 1

" Disable matchit
let g:loaded_matchit = 1

filetype plugin on
autocmd FileType fish compiler fish
