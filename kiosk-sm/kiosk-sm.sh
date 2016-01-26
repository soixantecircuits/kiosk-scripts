#!/bin/bash
pm2 start sm.sh
sleep 2
pm2 start devilspie.sh
xdotool mousemove 449 136 click 1
