#!/bin/bash


id_calendar=`cat $HOME/.pid_calendar`
echo $id_calendar

name=$(xdotool getwindowname $id_calendar)
echo $name

if xdotool getwindowname $id_calendar && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_calendar
	
	if [ "$id_focus" -eq "$id_calendar" ]
	then

		xdotool windowminimize $id_calendar

	else

	    echo "chrome opened but not focus"
	    
		xdotool windowsize $id_calendar 100% 100%
		xdotool windowactivate $id_calendar

	fi

else
    echo "Calendar not opened"
    
    
   	url1="https://outlook.office.com/calendar/view/month"
   	url2="https://calendar.notion.so/"
   	url3="https://app.todoist.com/app/upcoming"

	firefox $url1 $url2 $url3 & disown

	sleep 2

	export id_calendar=$(xdotool getwindowfocus)

	rm $HOME/.pid_calendar

	echo $id_calendar > $HOME/.pid_calendar



fi