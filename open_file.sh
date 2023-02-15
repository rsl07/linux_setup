#/bin/bash

file=$(. $HOME/config/linux/file.sh "$@")

if [[ "$file" == "" ]]
then
	echo "No file found"

else
	
	if echo $file | grep -n / | grep -q 2:/
	then

		echo "two results or more :"
		echo $file

	else

		xdg-open $file

	fi

fi