#!/bin/bash


dir=$(. $HOME/config/linux/directory.sh $@)

if [[ "$dir" == "" ]]
then
	echo "No file found"

elif echo $dir | grep -n / | grep -q 2:/
then

	echo "two results or more :"
	echo $dir

	sleep 3

else
	
	xdg-open $dir

fi

exit
