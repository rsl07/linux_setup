#!/bin/sh

eog /home/d51680/Captures\ d’écran/*.png  

sleep 0.5

wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz
