#!/bin/bash

prereqs=""

package="google-chrome-stable"

specialInstall="wget -q -P ~/Downloads/ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb && rm ~/Downloads/google-chrome-stable_current_amd64.deb"

specialRemove="sudo apt-get -y --purge remove google-chrome-stable"

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
