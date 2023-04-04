#!/bin/bash

if wmctrl -l | grep -q " JabRef"
then

	id_focus=$(xdotool getwindowfocus)
	id_terminal=$(xdotool search --name " Jabref")
	
	if [ "$id_focus" -eq "$id_terminal" ];
	then

		echo "JabRef opened but focus"

		xdotool windowminimize $id_terminal

	else

	    echo "JabRef opened"
	    
	    wmctrl -a " Jabref"
	fi

else 
    echo "JabRef not opened"
    
    /opt/jabref/bin/JabRef
	

fi
