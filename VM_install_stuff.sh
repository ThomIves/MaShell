sudo apt-get install -y git

sudo apt-get -y install python3-dev python3-tk build-essential python3-virtualenv virtualenvwrapper
mkvirtualenv py38std
deactivate

sudo rm /etc/apt/preferences.d/nosnap.pref

sudo apt-get -y install snapd

sudo snap install --classic code
