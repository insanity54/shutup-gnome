# shutup-gnome

![strikethrough notification bell](https://github.com/insanity54/shutup-gnome/blob/master/shutup-gnome/icon.jpg?raw=true)

I don't like the notification system in Pop!_OS-- it's distracting and it violates several of the rules that I think computers and UI should follow which are outlined in the great book [Program or be Programmed: Ten Commands for a Digital Age](https://amzn.to/2Zl443n).

If I could, I would like to completely disable/uninstall the notification functionality of Pop!_OS/Gnome3, but I don't know if that's a possibility. 

My workaround to the notification system is to permanently leave it in do not disturb (DND) mode. This has been a real challenge because

1. There is a bug in GNOME3 which causes the system to forget my DND setting upon rebooting.

2. Pop!_OS(?) or some other software disables Do Not Disturb mode when returning from the lock screen

My workaround to #2 is a brute force one-- run `gsettings set org.gnome.desktop.notifications show-banners false` every minute! This project generates the systemd service and timer files necessary to accomplish this task.

## Usage

`npm install`

The npm install script will invoke `install-systemd-files.sh` and prompt for sudo password. After this is complete, the gsettings command to enable do not disturb mode will be invoked every minute.
