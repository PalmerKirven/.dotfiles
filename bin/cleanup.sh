#!/bin/bash

# Remove vimrc
rm -f ~/.vimrc

# Remove bashrc_custom
sed -i '/source \/\.dotfiles\/bashrc_custom/d' ~/.bashrc

# Remove .TRASH
rm -rf ~/".TRASH"
