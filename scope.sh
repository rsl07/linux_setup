#!/bin/zsh

# setopt extendedglob


#Starting points of find command 
export SCOPE=(

	$HOME/Code $HOME/Config $HOME/Data $HOME/Téléchargements

	$HOME/Documents $HOME/Bureau $HOME/Images 
	
	$HOME/Projets $HOME/Litterature $HOME/Presentation
			 )

# export EXCLUDE_SCOPE='.bin\|.pyc\|anaconda\|__pycache__\|charles\|.swp'

export EXCLUDE_SCOPE='.bin\|.pyc\|anaconda\|__pycache__\|.swp\|.git\|.jedi\|sensitivity_analysis/module'



