#!/bin/bash

#autohide panel
# -----------------
dconf write /org/gnome/gnome-panel/layout/toplevels/bottom-panel/auto-hide true
dconf write /org/cinnamon/panel-autohide true

#disable icons
# -----------------
gsettings set org.gnome.desktop.background show-desktop-icons false
dconf write /org/nemo/desktop/show-desktop-icons false

#disable notifications
# -----------------
#TODO: check that removing update notifications on ubuntu-gnome is working
gsettings set org.gnome.nm-applet disable-disconnected-notifications "true"
gsettings set org.gnome.nm-applet disable-connected-notifications "true"
gsettings set org.gnome.nm-applet disable-vpn-notifications "true"
gsettings set org.gnome.nm-applet disable-wifi-create "true"
gsettings set org.gnome.nm-applet suppress-wireless-networks-available "true"
gsettings set org.gnome.desktop.notifications show-banners "true"
gsettings set org.gnome.desktop.notifications show-in-lock-screen "true"
gsettings set org.gnome.settings-daemon.plugins.updates frequency-updates-notification 0
dconf write /org/cinnamon/display-notifications false

#disable password after sleep / and disable sleep.
# -----------------
gsettings set org.gnome.desktop.lockdown disable-lock-screen 'true'
#gsettings set org.gnome.settings-daemon.plugins.power sleep-display-ac 0
#gsettings set org.gnome.settings-daemon.plugins.power sleep-display-battery 0
gsettings set org.gnome.desktop.session idle-delay 0
dconf write /org/cinnamon/desktop/lockdown/disable-lock-screen true
dconf write /org/cinnamon/settings-daemon/plugins/power/sleep-display-ac 0
dconf write /org/cinnamon/settings-daemon/plugins/power/sleep-display-battery 0
dconf write /org/cinnamon/desktop/session/idle-delay 0
echo "done desktop settings"

