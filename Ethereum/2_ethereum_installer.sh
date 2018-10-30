#!/bin/bash

prereqs="sudo apt install software-properties-common && 
sudo add-apt-repository -y ppa:ethereum/ethereum && 
sudo apt-get update"

package="ethereum"

specialInstall=""

specialRemove="sudo rm /etc/apt/sources.list.d/ethereum-ethereum-xenial.list"

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"

