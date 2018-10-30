#!/bin/bash

prereqs=""

package="sublime-text"

specialInstall="
sudo apt-get -y install sublime-text && 
echo 'Wait for about 1 minute and make sure the status bar remains quiet and then close sublime.' > ~/Note.txt &&
subl ~/Note.txt && 
read -p 'Press Enter' && 
wget -q -P ~/.config/sublime-text-3/Installed\ Packages https://packagecontrol.io/Package%20Control.sublime-package && 
subl ~/Note.txt && 
read -p 'Press Enter' && 
wget -q -O ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings https://gitlab.com/snippets/1692848/raw?inline=false && 
subl ~/Note.txt && 
read -p 'Press Enter' && 
wget -q -O ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings https://gitlab.com/snippets/1692851/raw?inline=false && 
sudo wget -q -O /usr/share/nemo/actions/subl.nemo_action https://gitlab.com/snippets/1692916/raw?inline=false; 
rm ~/Note.txt"

specialRemove="rm ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings && 
rm ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings && 
rm -r ~/.config/sublime-text-3 && 
sudo rm /usr/share/nemo/actions/subl.nemo_action"

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
