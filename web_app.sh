#!/bin/bash

echo ".pid_chrome_main : "
id_chrome=`cat $HOME/.pid_chrome_main`
echo $id_chrome
echo

echo "pid_chrome_main classname"
class_chrome=$(xprop WM_CLASS -id $id_chrome )
echo $class_chrome
echo 


if [[ $class_chrome == *"chrome_main"*"chrome"* ]];
then

	echo "chrome launched"

	id_focus=$(xdotool getwindowfocus)


	if [ "$id_focus" -eq "$id_chrome" ]
	then

	    echo "   chrome focus -> minimize"

		xdotool windowminimize $id_chrome

	else

	    echo "   chrome not focus -> focus"
	    
	    xdotool windowactivate $id_chrome

	fi
	
else

	echo "Not Launched, proceed to launch another app"

	url1="https://teams.microsoft.com/"
	url2="https://outlook.office365.com/mail/"
	url3="https://outlook.office365.com/calendar/view/month"''
	url6="https://pgi-ssl.edf.fr/gta/OpenhrCore/logon.jsp?Domaine=null"



	google-chrome --new-window $url1 $url2 $url3 $url4 $url5 $url6 & disown

	# bring chrome main to the front ----------------------------------------

	sleep 0.5

	wmctrl -l | grep "Google Chrome" | sort -r  

	last_chrome=$(wmctrl -l | grep "Google Chome" | sort -r | head -n 1 | cut -d " " -f 1) 


	echo "last chrome main opened: "$last_chrome
    
	wmctrl -i -a $last_chrome

	# --------------------------------------------------------------------------
	      
	export id_chrome=$(xdotool getwindowfocus)

	xdotool set_window --classname "chrome_main" $id_chrome

	echo $id_chrome > $HOME/.pid_chrome_main

fi


