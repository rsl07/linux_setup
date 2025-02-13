#!/bin/zsh



# Google Search ###############################################################


function ascom() {

url="https://code-aster.org/doc/default/fr/index.php?man=commande"

echo $url

exec google-chrome --new-window "$url" & disown 

exit

}

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

url="https://www.google.com/search?client=google-chrome-b-e&q="$search

echo $url

google-chrome --new-window "$url" & disown 

# wait for window to open
sleep 0.1


id_focus=$(xdotool getwindowfocus)
id_gg=$(xdotool search --name "$window_name")

xdotool search --name "$window_name"

if [ "$id_focus" != "$id_gg" ];
then

	echo "gg opened but not focus"

	xdotool windowactivate $id_gg

fi

sleep 0.1
wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz


exit

}




function icloud() {

url="https://www.icloud.com"

echo $url

exec google-chrome --new-window "$url" & disown 

exit

}


function github() {

url=https://github.com/rsl07?tab=repositories
echo $url

exec google-chrome --new-window "$url" & disown 

exit

}

function prime-video() {

url="https://www.primevideo.com/?_encoding=UTF8&language=fr_FR"
echo $url

exec google-chrome --new-window $url & disown 

exit

}


function gitlab() {

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


function veol() {

url=https://www.myelectricnetwork.fr/group/guest/
echo $url

exec google-chrome --new-window "$url" & disown 

exit

}

function pgi() {

url="https://pgi-ssl.edf.fr/gta/OpenhrCore/logon.jsp?Domaine=null"

echo $url

exec google-chrome --new-window "$url" & disown 

exit

}

function whatsapp() {

url="https://web.whatsapp.com/"

echo $url

exec google-chrome --new-window "$url" & disown 

exit

}


function ccas() {

url="https://www.ccas.fr/"

echo $url

exec google-chrome --new-window "$url" & disown 

exit

}




function grammarly() {

url="https://app.grammarly.com/"

echo $url

exec google-chrome --new-window "$url" & disown 

exit

}

function overleaf() {

url="https://fr.overleaf.com/project"

echo $url

exec google-chrome --new-window "$url" & disown 

exit

}


function linguee() {

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

url="https://www.linguee.fr/francais-anglais/search?source=auto&query="$search

echo $url

google-chrome --new-window "$url" & disown 

# wait for window to open
sleep 0.5


id_focus=$(xdotool getwindowfocus)
id_gg=$(xdotool search --name "$window_name")

xdotool search --name "$window_name"


if [ "$id_focus" != "$id_gg" ];
then

	echo "linguee opened but not focus"

	xdotool windowactivate $id_gg

fi

exit

}

