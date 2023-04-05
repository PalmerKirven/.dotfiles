#!/bin/bash

#Append all echo to linuxsetup.log
exec >> linuxsetup.log 2>&1

#Check System of user
if [ $(uname) != "Linux" ]; then
	echo "ERROR! Wrong System to Run Script" 
	exit 1
fi

#Create TRASH Directory
mkdir -p ~/".TRASH"

#Change name of vimrc to bupvimrc
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "The vimrc file was changed to bupvimrc" 
fi

#Redirect
cp ~/.dotfiles/etc/vimrc ~/.vimrc

#Add statement to .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
