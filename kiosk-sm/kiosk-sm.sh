#!/bin/bash
gnome-terminal --tab -e "/usr/bin/mono '/usr/share/ssm/SM.App.Linux.exe'"
sleep 2
gnome-terminal --tab -e "/usr/bin/devilspie"
sleep 1
xdotool mousemove 449 136 click 1
