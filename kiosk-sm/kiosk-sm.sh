#!/bin/bash

gnome-terminal --tab -e "/usr/bin/mono '/usr/share/ssm/SM.App.Linux.exe'"
while true; do
  if ps aux | grep -v grep | grep "/usr/share/ssm/SM.App.Linux.exe"
  then
    echo "found"
    sleep 2
    gnome-terminal --tab -e "/usr/bin/devilspie"
    sleep 1
    xdotool mousemove 375 145 click 1
    sleep 3
    break
  else
    echo "run"
  fi
done
