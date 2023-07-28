#!/bin/bash

if wmctrl -l | grep "Todoist" | grep -v "Google"
then

	id_focus=$(xdotool getwindowfocus)
	id_todoist=$(xdotool search --all --name --class --onlyvisible "Todoist")

	echo $id_todoist
	
	if [ "$id_focus" -eq "$id_todoist" ];
	then

		echo "todoist opened and focus"

		xdotool windowminimize $id_todoist

	else

	    echo "Todoist todoist opened unfocused"
	    
	    xdotool windowactivate $id_todoist
	fi

else 
    echo "Todoist not opened"
    
    todoist
	

fi