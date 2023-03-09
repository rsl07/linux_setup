	#!/bin/zsh

# setopt extendedglob


#Starting points of find command 
export SCOPE=(

	$HOME/Code $HOME/Config $HOME/Data $HOME/Téléchargements

	$HOME/Documents $HOME/Bureau $HOME/Photos

	$HOME/Projets $HOME/Litterature $HOME/Presentation
			 )

export EXCLUDE_SCOPE='.bin\|.pyc\|anaconda\|__pycache__\|charles\|.swp'

