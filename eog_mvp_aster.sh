#!/bin/zsh

eog /home/d51680/Images/mvp/aster/*(.png|.jpg) & disown

sleep 0.5

wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz
