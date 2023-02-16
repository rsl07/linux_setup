#!/bin/zsh



# Google Search ################################################################


function web() {

for arg in "$@"
do
     search=$search"+$arg"

     window_name=$window_name" $arg"
done

len=$((${#search}-1))

search=${search:1:$len}
window_name=${window_name:1:$len}


echo $search
echo $window_name

url="https://www.google.com/search?client=firefox-b-e&q="$search

echo $url

google-chrome --new-window "$url" & disown 

# wait for window to open
sleep 0.5


id_focus=$(xdotool getwindowfocus)
id_gg=$(xdotool search --name "$window_name")

xdotool search --name "$window_name"


if [ "$id_focus" != "$id_gg" ];
then

	echo "gg opened but not focus"

	xdotool windowactivate $id_gg

fi

exit

}



# ICLOUD #######################################################################


function icl() {

url="https://www.icloud.com"

echo $url

exec google-chrome --new-window "$url" & disown 

exit

}


function gith() {

url=https://github.com/rsl07?tab=repositories
echo $url

exec google-chrome --new-window "$url" & disown 

exit

}


function gitl() {

url=https://gitlab.pam-retd.fr/
echo $url

exec google-chrome --new-window "$url" & disown 

exit

}


function mail() {

url=https://outlook.office.com/mail/inbox/
echo $url

exec google-chrome --new-window "$url" & disown 

exit

}
