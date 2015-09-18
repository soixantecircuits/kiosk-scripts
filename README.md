A collection of scripts to setup a computer in kioskmode: install tools, configure gnome to autologin,disable screensaver, etc.

THIS SCRIPTS NEED AN UPDATE FOR UBUNTU 15
For example, if the desktop pops a notification asking to unlock keyring
go to System/Preferences/Passwords and Encryption Keys, right-click the "Passwords:login"-keyring and select "Change Password". type in your current password and leave the fields for new one empty.

# Usage
#######

Edit the files first to install only what you need

```
bash kiosk-install-apps.sh
bash kiosk-desktop-settings.sh
bash kiosk-setup-graphics.sh
```




