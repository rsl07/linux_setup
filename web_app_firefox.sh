#!/bin/bash

echo ".pid_firefox_main : "
id_firefox=`cat $HOME/.pid_firefox_main`
echo $id_firefox
echo

echo "pid_firefox_main classname"
class_firefox=$(xprop WM_CLASS -id $id_firefox )
echo $class_firefox
echo 


if [[ $class_firefox == *"firefox_main"*"firefox"* ]];
then

	echo "firefox launched"

	id_focus=$(xdotool getwindowfocus)


	if [ "$id_focus" -eq "$id_firefox" ]
	then

	    echo "   firefox focus -> minimize"

		xdotool windowminimize $id_firefox

	else

	    echo "   firefox not focus -> focus"
	    
	    xdotool windowactivate $id_firefox

	fi
	
else

	echo "Not Launched, proceed to launch another app"

	url1="https://drive.google.com/drive/my-drive"
    url2="https://chatgpt.com/"
    url3="https://keep.google.com/#label/work"
    url4="https://docs.google.com/spreadsheets/d/1xs4z-0pM75A4Y1bEdmqoGgf3p9cLk3sQ/edit?gid=429176068#gid=429176068"

	firefox --new-window $url1 & disown
	sleep 0.5

	firefox --new-tab	 $url2 & disown
	sleep 0.2
	
	firefox --new-tab	 $url3 & disown
	sleep 0.2

	firefox --new-tab	 $url4 & disown

	# bring firefox main to the front ----------------------------------------

	sleep 0.5

	wmctrl -l | grep "Mozilla Firefox" | sort -r  

	last_firefox=$(wmctrl -l | grep "Mozilla Firefox" | sort -r | head -n 1 | cut -d " " -f 1) 


	echo "last firefox main opened: "$last_firefox
    
	wmctrl -i -a $last_firefox

	# --------------------------------------------------------------------------
	      
	export id_firefox=$(xdotool getwindowfocus)

	xdotool set_window --classname "firefox_main" $id_firefox

	echo $id_firefox > $HOME/.pid_firefox_main

fi
