#!/bin/bash

function dd() {


dir=$(. $HOME/Config/linux/directory.sh $@)

if [[ "$dir" == "" ]]
then
	echo "No file found"

elif echo $dir | grep -n / | grep -q 2:/
then

	echo "two results or more :"
	echo $dir

else
	echo "$dir"
	cd $dir
	ls

fi

}

function dda() {


dir=$(. $HOME/Config/linux/directory_archived.sh $@)

if [[ "$dir" == "" ]]
then
	echo "No file found"

elif echo $dir | grep -n / | grep -q 2:/
then

	echo "two results or more :"
	echo $dir

else
	echo "$dir"
	cd $dir
	ls

fi

}
