#!/bin/zsh

DIR_WS=$HOME/Config/subl/
setopt extendedglob


file=$(find $DIR_WS -name "*$@*")

if [[ "$file" == "" ]]
then

	echo "No file found"


elif echo $file | grep -n / | grep -q 2:/
then

	echo "two results or more:"
	echo $file


elif [[ $file != *.sublime-workspace ]]
then 

	echo "file found not a workspace"
	echo $file


else 
	name=$(basename $file .sublime-workspace)

	echo opening sublime workspace : $name

	if wmctrl -l | grep -q \($name\)
	then

		id_ws=$(xdotool search --name "\($name\)")

		xdotool windowactivate $id_ws
		xdotool windowsize $id_ws 100% 100%


	else

		xdg-open $file

		sleep 0.5

		id_ws=$(xdotool search --name "\($name\)")

		xdotool windowactivate $id_ws
		xdotool windowsize $id_ws 110% 110%


		if xdotool search --name "untitled -" | grep -q 
		then 

			id_unt=$(xdotool search --name "untitled -")

			xdotool windowclose $id_unt

		fi


	fi

fi



