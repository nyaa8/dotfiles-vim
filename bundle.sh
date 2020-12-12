#!/bin/bash
if [ ! -d ~/.config/nvim/pack/packager/opt/vim-packager ]; then
	echo "Preparing vim-packager"
	git clone https://github.com/kristijanhusak/vim-packager ~/.config/nvim/pack/packager/opt/vim-packager
fi

cat ./partials/*.vim | sed -e '/^"/ d' -e '/^\s*$/ d' > init.vim
nvim +PackagerInstall

