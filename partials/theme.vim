" Theme configuration
set background=dark
set showtabline=2
set termguicolors
syntax enable

colorscheme sonokai

let g:lightline = {
	\ 'colorscheme': g:colors_name,
	\ 'tabline': { 'left': [['buffers']], 'right': [['close']] },
	\ 'component_expand': { 'buffers': 'lightline#bufferline#buffers' },
	\ 'component_type': { 'buffers': 'tabsel' },
	\ 'separator': { 'right': '', 'left': '' },
	\ }
