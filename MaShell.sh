# shtuff.sh
echo "Hello Thom"
echo "################ Starting Update #######################################"
echo 'UnumDeum73!' | sudo -S apt-get update
echo "################ Update Complete #######################################"
echo
echo "################ Removed unneeded packages #############################"
sudo apt-get -y autoremove
echo "################ Unneeded packages removed #############################"
echo
echo "################ Starting Install Essentials ###########################"
dpkg -s python-dev 2>/dev/null >/dev/null || sudo apt-get -y install python-dev
dpkg -s build-essential 2>/dev/null >/dev/null || sudo apt-get -y install build-essential
echo "################ Essentials Install Complete ###########################"
echo 
echo "################ Installing Sublime ####################################"
dpkg -s sublime-text 2>/dev/null >/dev/null || sudo apt-get -y install sublime-text
echo "################ Sublime Install Complete ##############################"
echo 
echo "################ Installing Dropbox ####################################"
dpkg -s dropbox 2>/dev/null >/dev/null || sudo apt-get -y install dropbox
dpkg -s nemo-dropbox 2>/dev/null >/dev/null || sudo apt-get -y install nemo-dropbox
echo "################ Dropbox Install Complete ##############################"
echo 
echo "### Installing Python VirtualEnv Stuff #################################"
dpkg -s python-virtualenv 2>/dev/null >/dev/null || sudo apt-get -y install python-virtualenv
dpkg -s virtualenvwrapper 2>/dev/null >/dev/null || sudo apt-get -y install virtualenvwrapper
if grep -q "virtualenvwrapper.sh" "/home/thom/.bashrc"; then  
    echo "virtualenvwrapper is set up properly in .bashrc"
else  
    echo "Setting up bashrc to work with virtualenvwrapper."
    mkdir /home/thom/.virtualenvs
    echo "" >> /home/thom/.bashrc
    echo "# Path to the virtualenvwrapper shell script" >> /home/thom/.bashrc
    echo "source /usr/share/virtualenvwrapper/virtualenvwrapper.sh" >> /home/thom/.bashrc
fi
echo "### Python Virtual Environment Stuff Installs Complete #################"
echo 

