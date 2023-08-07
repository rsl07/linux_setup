#!/bin/bash


dir=$(. $HOME/Config/linux/directory.sh $@)

if [[ "$dir" == "" ]]
then
	echo "No file found"

elif echo $dir | grep -n / | grep -q 2:/
then

	echo "two results or more :"
	echo $dir

	sleep 3

else
	
	nautilus -w $dir & disown

	sleep 1

	$LINUX/left_view.sh

	exit

fi

exit
