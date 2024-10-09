#!/bin/bash

id_notion=`cat $HOME/.pid_notion`
echo $id_notion


name=$(xdotool getwindowname $id_notion)
echo $name


if xdotool getwindowname $id_notion && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_notion
	
	if [ "$id_focus" -eq "$id_notion" ]
	then

		xdotool windowminimize $id_notion

	else

	    echo "notion opened but not focus"
	    
		xdotool windowactivate $id_notion

	fi

else

	echo "Not Launched, proceed to launch another app"

	url="https://www.notion.so/Inbox-49c3230eb0f04db0bc83e103257265f2"

	firefox $url https://docs.google.com/drawings/d/1_6bLeRARPqkzOaIZ0hZbaFx3dTVdA-dUfEBxlLDWMm8/edit  & disown

	sleep 1

	$HOME/Config/linux/left_view.sh

	export id_notion=$(xdotool getwindowfocus)

	rm $HOME/.pid_notion

	echo $id_notion > $HOME/.pid_notion


fi
