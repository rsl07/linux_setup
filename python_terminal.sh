#!/bin/bash

if wmctrl -l | grep -q "rsl python terminal"
then
	
	id_focus=$(xdotool getwindowfocus)
	id_terminal=$(xdotool search --name "rsl python terminal")
	
	if [ "$id_focus" -eq "$id_terminal" ];
	then

		echo "python terminal opened but focus"

		xdotool windowminimize $id_terminal

	else

	    echo "python terminal opened"
	    
	    wmctrl -a "python terminal"
	fi

else 
    echo "python terminal not opened"
    
    terminator --geometry=960x1200+0+0 -T "rsl python terminal" -p python
	
	#set up dual screen home
	#terminator --geometry=960x1200+2880+0 -T "python terminal"

fi
