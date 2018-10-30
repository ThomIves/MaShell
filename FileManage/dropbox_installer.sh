#!/bin/bash

prereqs=""

package="dropbox nemo-dropbox"

specialInstall="dropbox start -i && 
read -p 'Press Enter once dropbox is installed.' && 
dropbox exclude add * && 
dropbox exclude remove ~/Dropbox/Catholic/NuntiiDei"

specialRemoval="dropbox stop"

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
