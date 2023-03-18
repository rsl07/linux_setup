#!/bin/bash

if [ wmctrl -l | grep -q " Gmail " ] | [ wmctrl -l | grep -q "Google Photos" ] | [ wmctrl -l | grep -q " Google Keep" ] | [ wmctrl -l | grep -q " Google Agenda" ] 
 then
# 
	id_focus=$(xdotool getwindowfocus)
	id_chrome=$(xdotool search --name "Google Chrome")

	echo $id_focus
	echo $id_chrome

	xdotool search --name "Google Chrome"
	
	if [ "$id_focus" -eq "$id_chrome" ]
	then

		xdotool windowminimize $id_chrome

	else

	    echo "chrome opened but not focus"
	    
		xdotool windowactivate $id_chrome

	fi

else 

	url1="https://mail.google.com/mail/u/0/?tab=um#inbox"
	url2="https://photos.google.com/"
	url3="https://keep.google.com/u/0/"
	url4="https://calendar.google.com/calendar/u/0/r?tab=rc&pli=1"
	url5="https://drive.google.com/drive/my-drive"


	exec google-chrome --new-window $url1 $url2 $url3 $url4 $url5 & disown


fi

