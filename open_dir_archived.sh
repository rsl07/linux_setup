#!/bin/zsh


dir=$(. $HOME/Config/linux/directory_archived.sh $@)

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

	sleep 0.3

	/home/rsl/Config/linux/left_view.sh

	exit

fi

exit
