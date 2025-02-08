#!/bin/zsh

set -e

if [[ $1 == 'backup' ]]; then

  dconf dump '/org/gnome/desktop/wm/keybindings/'                                > keybindings1.dconf
  dconf dump '/org/gnome/mutter/keybindings/'                                    > keybindings2.dconf
  dconf dump '/org/gnome/settings-daemon/plugins/media-keys/'                    > keybindings3.dconf

  dconf dump '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' > custom-values.dconf
  dconf read '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings'  > custom-keys.dconf


  echo "backup done" ; exit 0
fi

if [[ $1 == 'restore' ]]; then

  dconf reset -f '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/'
  dconf reset -f '/org/gnome/desktop/wm/keybindings/'
  dconf reset -f '/org/gnome/mutter/keybindings/'
  dconf reset -f '/org/gnome/settings-daemon/plugins/media-keys/'

  dconf load     '/org/gnome/desktop/wm/keybindings/'                                < keybindings1.dconf
  dconf load     '/org/gnome/mutter/keybindings/'                                    < keybindings2.dconf
  dconf load     '/org/gnome/settings-daemon/plugins/media-keys/'                    < keybindings3.dconf


  dconf load     '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' < custom-values.dconf
  dconf write    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings'    "$(cat custom-keys.dconf)"


  echo "restore done"; exit 0
fi

echo "parameter 0: [backup|restore]"