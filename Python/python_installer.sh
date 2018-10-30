#!/bin/bash

prereqs=""

package="python-dev python-tk build-essential python-virtualenv virtualenvwrapper"

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
mkvirtualenv py27std
pip install -r requirements.txt
'

specialRemoval=""

postreqs=""

./SinglePackageManager.sh "$prereqs" \
                          "$package" \
                          "$specialInstall" \
                          "$specialRemove" \
                          "$postreqs"
