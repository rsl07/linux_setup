#!/bin/zsh

DIR_WS=$HOME/Config/subl/
setopt extendedglob


file=$(find $DIR_WS -name "*$@*-workspace")

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

	if wmctrl -l | grep \($name\)
	then

		id_ws=$(xdotool search --name "\($name\)")
		id_focus=$(xdotool getwindowfocus)


		if [ "$id_focus" -eq "$id_ws" ];
		then

			echo "$name workspace opened and focus"

			xdotool windowminimize $id_ws

		else

		    echo "$name workspace opened unfocused"
		    
		    xdotool windowactivate $id_ws

		fi


	else

		xdg-open $file

		sleep 2

		id_ws=$(xdotool getwindow focus)

		# wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz

		# if xdotool search --name "untitled -" | grep -q 
		# then 

		# 	id_unt=$(xdotool search --name "untitled -")

		# 	xdotool windowclose $id_unt

		


	fi

fi



