#!/bin/csh
set config_files=(plugins.vim settings.vim theme.vim lsp.vim)
if ( ! -d ~/.config/nvim/pack/packager/opt/vim-packager ) then
	echo "Preparing vim-packager"
	git clone https://github.com/kristijanhusak/vim-packager ~/.config/nvim/pack/packager/opt/vim-packager
endif

cd ~/.config/nvim/partials
cat $config_files | sed -e '/^	*"/ d' -e '/^\s*$/ d' > ../init.vim
nvim +PackagerInstall

