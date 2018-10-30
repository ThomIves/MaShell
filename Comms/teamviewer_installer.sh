#!/bin/bash

prereqs=""

package="teamviewer"

specialInstall="wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb &&
sudo dpkg -i teamviewer_amd64.deb;
sudo apt-get -f install"

specialRemove=""

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
