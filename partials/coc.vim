function! s:check_back_space () abort
	let col = col('.') - 1
	return !col || getline('.')[col -1] =~# '\s'
endfunction

" Completion trigger
inoremap <silent><expr> <tab>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<tab>" :
	\ coc#refresh()
inoremap <silent><expr> <s-tab> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <silent><expr> + <SID>show_documentation()

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

function! s:show_documentation()
	if (index(['vim', 'help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

" autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <silent> +d <Plug>(coc-definition)
nmap <silent> +i <Plug>(coc-implementation)
nmap <silent> +s <Plug>(coc-references)

xmap <silent> <leader>f <Plug>(coc-format-selected)
nmap <silent> <leader>f <Plug>(coc-format-selected)
nmap <silent> <leader>r <Plug>(coc-rename)

nmap <silent> <leader>a <Plug>(coc-codeaction-selected)
xmap <silent> <leader>a <Plug>(coc-codeaction-selected)
nmap <silent> <leader>w <Plug>(coc-codeaction)

nmap <silent> <leader>qf <Plug>(coc-fix-current)
nmap <expr> <leader>o CocAction('runCommand', 'editor.action.organizeImport')

command! -nargs=0 Format :call CocAction('format')

" Coc extensions
let g:coc_global_extensions = [
			\ 'coc-go',
			\ 'coc-css',
			\ 'coc-html',
			\ 'coc-emmet',
			\ 'coc-json',
			\ 'coc-tsserver',
			\ 'coc-eslint',
			\ 'coc-rust-analyzer',
			\ 'coc-emoji',
			\ 'coc-snippets',
			\ ]
