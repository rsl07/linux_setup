#!/bin/zsh 

file=$(. $HOME/Config/linux/finder.sh "$@")


if echo $file | grep -qv " " 
then

	if [[ $file == *.py ]]
	then

		python3.7 $file

	elif [[ $file == *.sh ]]
	then

		bash $file

	else

		/bin/zsh $file

	fi

else

	echo "two results or more :"
	echo $file

fi