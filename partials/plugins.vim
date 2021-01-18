function! PackagerInit() abort
	packadd vim-packager
	call packager#init()

	" call packager#add('dstein64/vim-startuptime')

	" call packager#add('arzg/vim-colors-xcode')
	" call packager#add('sainnhe/forest-night')
	" call packager#add('sainnhe/sonokai')
	" call packager#add('cocopon/iceberg.vim')
	" call packager#add('morhetz/gruvbox')
	" call packager#add('cseelus/vim-colors-lucid')
	" call packager#add('co1ncidence/mountaineer.vim')
	" call packager#add('co1ncidence/gunmetal.vim')
	" call packager#add('franbach/miramare')
	" call packager#add('wadackel/vim-dogrun')
	" call packager#add('sainnhe/gruvbox-material')
	" call packager#add('ntk148v/vim-horizon')
	" call packager#add('jacoborus/tender.vim')
	call packager#add('embark-theme/vim')

	call packager#add('norcalli/nvim-colorizer.lua')
	call packager#add('neovim/nvim-lspconfig')

	call packager#add('editorconfig/editorconfig-vim')

	call packager#add('leafOfTree/vim-svelte-plugin')
	call packager#add('fatih/vim-go')
	call packager#add('georgewitteman/vim-fish')
	call packager#add('othree/html5.vim')
	call packager#add('ziglang/zig.vim')

endfunction

command! PackagerInstall call PackagerInit() | call packager#install()
command! -bang PackagerUpdate call PackagerInit() | call packager#update({ 'force_hooks': '<bang>' })
command! PackagerClean call PackagerInit() | call packager#clean()
command! PackagerStatus call PackagerInit() | call packager#status()

