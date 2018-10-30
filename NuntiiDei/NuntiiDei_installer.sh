#!/bin/bash

prereqs=""

package="audacity qasmixer ffmpeg"

specialInstall="sudo apt-get -f install;
mkdir ~/Studio;"

specialRemove=""

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
