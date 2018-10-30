#!/bin/bash

mkdir -p ~/Repositories

if cd ~/Repositories/MaShell &>/dev/null
then echo "MaShell repository exists."
else
    cd ~/Repositories
    git clone https://UserName:PassWord@gitlab.com/ThomIves/MaShell.git
fi
echo ""
if cd ~/Repositories/git_notes &>/dev/null
then echo "git_notes repository exists."
else
    cd ~/Repositories
    git clone https://UserName:PassWord@gitlab.com/ThomIves/git_notes.git
fi
echo ""
if cd ~/Repositories/TLC_Contract_Dev &>/dev/null
then echo "TLC_Contract_Dev repository exists." 
else 
    cd ~/Repositories
    git clone https://UserName:PassWord@gitlab.com/ThomIves/TLC_Contract_Dev.git
fi
echo ""
if cd ~/Repositories/Eth_Dev_Notes &>/dev/null
then echo "Eth_Dev_Notes repository exists."
else 
    cd ~/Repositories
    git clone https://UserName:PassWord@gitlab.com/ThomIves/Eth_Dev_Notes.git
fi
echo ""
if cd ~/Repositories/basic_eth_front_end &>/dev/null
then echo "basic_eth_front_end repository exists."
else 
    cd ~/Repositories
    git clone https://UserName:PassWord@gitlab.com/ThomIves/basic_eth_front_end.git
fi
echo ""
if cd ~/Repositories/tlc_refactor &>/dev/null
then echo "tlc_refactor repository exists."
else 
    cd ~/Repositories
    git clone https://UserName:PassWord@gitlab.com/ThomIves/tlc_refactor.git
fi
echo ""
if cd ~/Repositories/tlc_contract &>/dev/null
then echo "tlc_contract repository exists."
else 
    cd ~/Repositories
    git clone https://UserName:PassWord@gitlab.com/ThomIves/tlc_contract.git
fi
echo ""
if cd ~/Repositories/tlc_pred &>/dev/null
then echo "tlc_pred repository exists."
else 
    cd ~/Repositories
    git clone https://UserName:PassWord@gitlab.com/ThomIves/tlc_pred.git
fi
echo ""
if cd ~/Repositories/git_diet &>/dev/null
then echo "git_diet repository exists."
else 
    cd ~/Repositories
    git clone https://UserName:PassWord@gitlab.com/ThomIves/git_diet.git
fi
echo ""
