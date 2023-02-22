#!/bin/bash

if wmctrl -l | grep -q " - Google Chrome"
then

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

	google-chrome "https://teams.microsoft.com/_?culture=fr-fr#/conversations/48:notes?ctx=chat." & google-chrome "https://edfonline-my.sharepoint.com/personal/antoine_roussel_edf_fr/_layouts/15/onedrive.aspx" & google-chrome "https://outlook.office.com/mail/"

fi

