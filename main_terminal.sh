#!/bin/bash

if wmctrl -l | grep -q "rsl main terminal"
then

	id_focus=$(xdotool getwindowfocus)
	id_terminal=$(xdotool search --name "rsl main terminal")
	
	if [ "$id_focus" -eq "$id_terminal" ];
	then

		echo "terminal opened but focus"

		xdotool windowclose $id_terminal

	else

	    echo "main terminal opened"
	    
	    wmctrl -a "main terminal"w
	fi

else 
    echo "main terminal not opened"
    
    terminator --geometry=960x1200+2880+0 -T "rsl main terminal"
	
	#set up dual screen home
	#terminator --geometry=960x1200+2880+0 -T "main terminal"

fi
