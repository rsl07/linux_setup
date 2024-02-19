#/bin/bash

file=$(. $HOME/Config/linux/file_archived.sh "$@")


if [[ "$file" == "" ]]
then
	echo "No file found"

else
	
	if echo $file | grep -n / | grep -q 2:/
	then

		echo "two results or more :"
		echo $file

	else

		xdg-open $file && disown

		exit

	fi

fi