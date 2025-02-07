#!/bin/sh

eog /home/d51680/Images/mvp/aster/*.png & disown 

sleep 0.5

wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz
