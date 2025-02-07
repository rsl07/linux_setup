#!/bin/bash

echo ".pid_todoist : "
id_todoist=`cat $HOME/.pid_todoist`
echo $id_todoist
echo

echo "pid_todoist classname"
class_todoist=$(xprop WM_CLASS -id $id_todoist )
echo $class_todoist
echo 


if [[ $class_todoist == *"todoist"*"chrome"* ]];
then

	echo "todoist launched"

	id_focus=$(xdotool getwindowfocus)


	if [ "$id_focus" -eq "$id_todoist" ]
	then

	    echo "   todoist focus -> minimize"

		xdotool windowminimize $id_todoist

	else

	    echo "   todoist not focus -> focus"
	    
	    xdotool windowactivate $id_todoist

	fi
	
else

	echo "Not Launched, proceed to launch another app"

	google-chrome --new-window "https://app.todoist.com/app/project/2322035221" & disown

	sleep 0.5

	# bring todoist main to the front ----------------------------------------

	sleep 0.5

	wmctrl -l | grep "Google Chrome" | sort -r  

	last_todoist=$(wmctrl -l | grep "Google Chome" | sort -r | head -n 1 | cut -d " " -f 1) 


	echo "last todoist main opened: "$last_todoist
    
	wmctrl -i -a $last_todoist

	# --------------------------------------------------------------------------
	      
	export id_todoist=$(xdotool getwindowfocus)

	xdotool set_window --classname "todoist" $id_todoist

	echo $id_todoist > $HOME/.pid_todoist

fi


