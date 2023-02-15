#!/bin/zsh

# setopt extendedglob


#Starting points of find command 
export SCOPE=(

	$HOME/code $HOME/config $HOME/data $HOME/Téléchargements

	$HOME/Documents $HOME/Bureau $HOME/Photos $HOME/Musique $HOME/Vidéos   

	/home/rsl/.config/sublime-text-3/Packages/User
			 )

export EXCLUDE_SCOPE='.bin\|.pyc\|anaconda\|__pycache__\|charles\|.swp\|save'

