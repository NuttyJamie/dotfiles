#!/bin/bash

#Create backup folder
if [[ ! -d "dotfile_backup" ]]; then
	mkdir ./dotfile_backup
fi

#Backup existing file
if [[ ! -h "$HOME/.vimrc" ]]; then
	mv $HOME/.vimrc ./dotfile_backup
else
	rm $HOME/.vimrc
fi

if [[ ! -h "$HOME/.bash_profile" ]]; then
	mv $HOME/.bash_profile ./dotfile_backup
else
	rm $HOME/.bash_profile
fi

#Link all dotfiles to their own location
ln -s $HOME/Projects/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/Projects/dotfiles/.bash_profile $HOME/.bash_profile
