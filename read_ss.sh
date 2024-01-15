#!/bin/sh

eog /home/d51680/Images/Capture*.png  

sleep 0.2

wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz
