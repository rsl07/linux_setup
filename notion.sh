#!/bin/bash

echo ".pid_notion : "
id_notion=`cat $HOME/.pid_notion`
echo $id_notion
echo

echo "pid_notion classname"
class_notion=$(xprop WM_CLASS -id $id_notion )
echo $class_notion
echo 


if [[ $class_notion == *"notion"*"firefox"* ]];
then

	echo "notion launched"

	id_focus=$(xdotool getwindowfocus)


	if [ "$id_focus" -eq "$id_notion" ]
	then

	    echo "   notion focus -> minimize"

		xdotool windowminimize $id_notion

	else

	    echo "   notion not focus -> focus"
	    
	    xdotool windowactivate $id_notion

	fi
	
else

	echo "Not Launched, proceed to launch another app"

	url="https://www.notion.so/Inbox-49c3230eb0f04db0bc83e103257265f2"

	firefox --new-window $url & disown

	# bring firefox notion to the front ----------------------------------------

	sleep 0.5

	wmctrl -l | grep "Mozilla Firefox" | sort -r  

	last_notion=$(wmctrl -l | grep "Mozilla Firefox" | sort -r | head -n 1 | cut -d " " -f 1) 

	echo $last_notion 

	echo "last firefox notion opened: "$last_notion
    
	wmctrl -i -a $last_notion

	# --------------------------------------------------------------------------



	export id_notion=$(xdotool getwindowfocus)

	xdotool set_window --classname "notion" $id_notion

	echo $id_notion > $HOME/.pid_notion

fi
