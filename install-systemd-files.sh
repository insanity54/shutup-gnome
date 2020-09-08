#!/bin/bash

bindir="$(dirname "$(readlink -fm "$0")")"


if [ "$EUID" -eq 0 ]; then
  echo "try again but not as root"
  exit 5
fi


# generate systemd .service and .timer files
node ./generateServiceFile.js $USER $USER | sudo tee /etc/systemd/system/shutup-gnome.service &&
node ./generateTimerFile | sudo tee /etc/systemd/system/shutup-gnome.timer &&
sudo systemctl daemon-reload
sudo systemctl start shutup-gnome.timer
