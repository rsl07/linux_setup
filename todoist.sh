#!/bin/bash


id_todoist=`cat $HOME/.pid_todoist`
echo $id_todoist

name=$(xdotool getwindowname $id_todoist)
echo $name

if xdotool getwindowname $id_todoist && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_todoist
	
	if [ "$id_focus" -eq "$id_todoist" ]
	then

		xdotool windowminimize $id_todoist

	else

	    echo "chrome opened but not focus"
	    
		xdotool windowsize $id_todoist 100% 100%
		xdotool windowactivate $id_todoist

	fi

else
    echo "Calendar not opened"
    
    
	google-chrome --new-window "https://app.todoist.com/app/project/2322035221" & disown

	sleep 2

	export id_todoist=$(xdotool getwindowfocus)

	rm $HOME/.pid_todoist

	echo $id_todoist > $HOME/.pid_todoist



fi