Once Screenshotmonitor is launched in your system launch the below command to have it run then hide once the play button has been pressed.

Requirements:

sudo apt-get install devilspie
sudo apt-get install xdotool
sudo apt-get install npm or nvm
npm install pm2 -g

Command:

mkdir -p ~/.devilspie
cp hide.ds ~/.devilspie/
bash kiosk-sm.sh
