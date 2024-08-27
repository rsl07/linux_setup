#!/bin/bash

id_firefox=`cat $HOME/.pid_main_firefox`
echo $id_firefox



name=$(xdotool getwindowname $id_firefox)
echo $name


if xdotool getwindowname $id_firefox && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_firefox
	
	if [ "$id_focus" -eq "$id_firefox" ]
	then

		xdotool windowminimize $id_firefox

	else

	    echo "firefox opened but not focus"
	    
		xdotool windowsize $id_firefox 100% 100%
		xdotool windowactivate $id_firefox

	fi

else

	echo "Not Launched, proceed to launch another app"

    url1="https://chatgpt.com/"
	url2="https://calendar.notion.so/"

	firefox --new-window $url1 $url2 & disown

	# firefox --new-tab $url2  & disown

	# firefox --new-tab $url3  & disown

	sleep 2
	      
	export id_firefox=$(xdotool getwindowfocus)

	rm $HOME/.pid_main_firefox

	echo $id_firefox > $HOME/.pid_main_firefox


fi
