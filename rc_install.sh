#!/bin/bash

export DOTFOLDER=$HOME/Projects/dotfiles

#Create backup folder
if [[ ! -d "$DOTFOLDER/dotfile_backup" ]]; then
	mkdir -pv $DOTFOLDER/dotfile_backup
fi

#Backup existing file
if [[ ! -f "$HOME/.bash_profile" ]]; then
	mv -vi $HOME/.bash_profile $DOTFOLDER/dotfile_backup
fi

if [[ ! -f "$HOME/.bashrc" ]]; then
	mv -vi $HOME/.vimrc $DOTFOLDER/dotfile_backup
fi

if [[ ! -f "$HOME/.vimrc" ]]; then
	mv -vi $HOME/.vimrc $DOTFOLDER/dotfile_backup
fi

if [[ ! -f "$HOME/.gvimrc" ]]; then
	mv -vi $HOME/.gvimrc $DOTFOLDER/dotfile_backup
fi

#Link all dotfiles to their own location
ln -s $HOME/Projects/dotfiles/.bash_profile $HOME/.bash_profile
ln -s $HOME/Projects/dotfiles/.bashrc $HOME/.bashrc
ln -s $HOME/Projects/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/Projects/dotfiles/.gvimrc $HOME/.gvimrc
