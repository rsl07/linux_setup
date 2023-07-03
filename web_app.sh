#!/bin/bash

id_chrome=`cat $HOME/.pid_main_chrome`

echo 

if xdotool getwindowname $id_chrome
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

	echo "Not Launched"

	url1="chrome-extension://ndbaejgcaecffnhlmdghchfehkflgfkj/index.html"
	url2="https://mail.google.com/mail/"
	url3="https://keep.google.com/u/0/"
	url4="https://calendar.google.com/calendar/u/0/r?tab=rc&pli=1"

	google-chrome --new-window $url1 $url2 $url3 $url4 & disown

	sleep 1
	export id_chrome=$(xdotool search --name "Full Screen for Google Tasks - Google Chrome")

	echo $id_chrome > $HOME/.pid_main_chrome

	# google-chrome "https://mail.google.com/mail/" & google-chrome "https://keep.google.com/" & google-chrome "https://calendar.google.com/calendar/"

fi
