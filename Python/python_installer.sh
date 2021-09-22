#!/bin/bash

prereqs=""

package="python3-dev python3-tk build-essential python3-virtualenv virtualenvwrapper"

specialInstall='
if grep -q "virtualenvwrapper.sh" "/home/thom/.bashrc"; then  
    echo "virtualenvwrapper is set up properly in .bashrc"
else  
    echo "Setting up bashrc to work with virtualenvwrapper."
    mkdir ~/.virtualenvs
    echo "" >> ~/.bashrc
    echo "# Path to the virtualenvwrapper shell script" >> ~/.bashrc
    echo "source /usr/share/virtualenvwrapper/virtualenvwrapper.sh" >> ~/.bashrc
    echo source ~/.bashrc
fi
'

specialRemoval=""

postreqs="
source ~/.bashrc
mkvirtualenv py27std
pip install -r requirements.txt
deactivate
mkvirtualenv -p /usr/bin/python3 py36std
pip install -r requirements.txt
deactivate
"

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
