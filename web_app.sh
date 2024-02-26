#!/bin/bash

id_chrome=`cat $HOME/.pid_main_chrome`
echo $id_chrome



name=$(xdotool getwindowname $id_chrome)
echo $name


if xdotool getwindowname $id_chrome && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_chrome
	
	if [ "$id_focus" -eq "$id_chrome" ]
	then

		xdotool windowminimize $id_chrome

	else

	    echo "chrome opened but not focus"
	    
		xdotool windowsize $id_chrome 100% 100%
		xdotool windowactivate $id_chrome

	fi

else

	echo "Not Launched, proceed to launch another app"

	url1="https://teams.microsoft.com/"
	url2="https://outlook.office365.com/mail/"

	google-chrome --new-window $url1 $url2  & disown

	sleep 2

	export id_chrome=$(xdotool getwindowfocus)

	rm $HOME/.pid_main_chrome

	echo $id_chrome > $HOME/.pid_main_chrome


fi
