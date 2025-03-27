#!/bin/zsh

# setopt extendedglob


#Starting points of find command 
export SCOPE=(

	$HOME/Code $HOME/Config $HOME/Data $HOME/Téléchargements

	$HOME/Documents $HOME/Bureau $HOME/Images 
	
	$HOME/Projets $HOME/Litterature $HOME/Presentation

	$HOME/dev/codeaster/src/bibfor

	$HOME/dev/codeaster/src/code_aster/CodeCommands
	$HOME/dev/codeaster/src/code_aster/MacroCommands
	$HOME/dev/codeaster/src/code_aster/Messages
	$HOME/dev/codeaster/src/code_aster/Cata

	$HOME/dev/smeca/salome-gevibus/gevibus/

			 )

# export EXCLUDE_SCOPE='.bin\|.pyc\|anaconda\|__pycache__\|charles\|.swp'

export EXCLUDE_SCOPE='.bin\|.pyc\|anaconda\|__pycache__\|.swp\|.git\|.jedi\|sensitivity_analysis/module'



