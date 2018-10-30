#!/bin/bash

prereqs='
mainDir=$(pwd) && 
cd ~/Downloads && 
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh && 
sudo bash nodesource_setup.sh && 
rm nodesource_setup.sh && 
cd "$mainDir"
'

package="nodejs"

specialInstall="
mkdir -p ~/.npm-global && 
npm config set prefix '~/.npm-global' && 
./Ethereum/npmPathAdditions.special && 
source ~/.profile"

specialRemove="
sudo rm /etc/apt/sources.list.d/nodesource.list && 
sudo rm -rf ~/.npm* ~/.node*"

postreqs="sed -i 's/~\/.npm-global\/bin://' ~/.profile"

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
