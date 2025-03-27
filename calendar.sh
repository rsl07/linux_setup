#!/bin/bash

echo ".pid_calendar : "
id_calendar=`cat $HOME/.pid_calendar`
echo $id_calendar
echo

echo "pid_calendar classname"
class_calendar=$(xprop WM_CLASS -id $id_calendar )
echo $class_calendar
echo 


if [[ $class_calendar == *"calendar"*"chrome"* ]];
then

	echo "chrome launched"

	id_focus=$(xdotool getwindowfocus)


	if [ "$id_focus" -eq "$id_calendar" ]
	then

	    echo "   calendar focus -> minimize"

		xdotool windowminimize $id_calendar

	else

	    echo "   calender not focus -> focus"
	    
	    xdotool windowactivate $id_calendar

	fi
	
else

	echo "Not Launched, proceed to launch another app"

	url1="https://outlook.office365.com/calendar/view/month"
	url2="https://pgi-ssl.edf.fr/gta/OpenhrCore/logon.jsp?Domaine=null"
	url3="https://www.notion.so/Ordo-5eaaab45039745c18e42e1a418a9e78f"
	url4='https://calendar.notion.so/event/NzYyMjQ4ZjRiMWMwNDE0YjgyODQzOTBlZTk5MDkxYzkvZWUyMTY3ZTViYTdkYmUxMjI2ZDU2MjFmOTY2MTBkNjE2YTRlOWUyYjliNWNhM2NkZTk2MzMxY2ZkOTYwMWMxNkBncm91cC5jYWxlbmRhci5nb29nbGUuY29tLzFlZTBjZjY4LTg3MDAtNDYxMi04MzhmLWEwNzUyNjhiMTZhZQ'


	google-chrome --new-window $url1 $url2 $url3 $url4 & disown

	# bring chrome main to the front ----------------------------------------

	sleep 0.5

	wmctrl -l | grep "Google Chrome" | sort -r  

	last_calendar=$(wmctrl -l | grep "Google Chome" | sort -r | head -n 1 | cut -d " " -f 1) 


	echo "last chrome main opened: "$last_calendar
    
	wmctrl -i -a $last_calendar

	# --------------------------------------------------------------------------
	      
	export id_calendar=$(xdotool getwindowfocus)

	xdotool set_window --classname "calendar" $id_calendar

	echo $id_calendar > $HOME/.pid_calendar

fi


