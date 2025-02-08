#!/bin/bash

CMD="gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

PATH="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
"['$KEY_PATH/custom0/', '$KEY_PATH/custom1/', '$KEY_PATH/custom2/', '$KEY_PATH/custom3/', '$KEY_PATH/custom4/', '$KEY_PATH/custom5/']"

# Take a screenshot of the entire display
$CMD/custom0/ name    "chrome main"
$CMD/custom0/ command "/home/d51680/Config/linux/web_app.sh"
$CMD/custom0/ binding "<Super>z"

# screenshot the current active window
$CMD/custom1/ name    "launcher"
$CMD/custom1/ command "/home/d51680/Config/linux/launcher.sh"
$CMD/custom1/ binding "<Alt>space"

# Take a selection of screen with screenshot
$CMD/custom2/ name    "chrome todoist"
$CMD/custom2/ command "shutter --select"
$CMD/custom2/ binding "<Shift>Print"

# Launch Terminal
$CMD/custom3/ name    "eog mvp aster"
$CMD/custom3/ command "gnome-terminal"
$CMD/custom3/ binding "<Super>Q"

# Open up file browser
$CMD/custom4/ name    "eog screenshot"
$CMD/custom4/ command "/usr/bin/nautilus --new-window"
$CMD/custom4/ binding "<Super>E"

# Launch Synapse (Launchy Equivalent)
$CMD/custom5/ name    "evince abstract wesc"
$CMD/custom5/ command "/usr/bin/synapse"
$CMD/custom5/ binding "<Super>R"