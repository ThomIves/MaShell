#!/bin/bash

prereqs="$1"
package="$2"
specialInstall="$3"
specialRemove="$4"
postreqs="$5"

# Determine if package is present and add it if it's not.
dpkg-query -s $package &>/dev/null
out=$?
if [ $out -eq 1 ]; then
    echo Installing $package from installation function in this file

    if [ "$prereqs" != "" ]
    then
        eval "$prereqs"
    fi

    if [ "$package" != "" ]
    then
        sudo apt-get update && sudo apt-get upgrade
        sudo apt-get -y install $package
    fi

    if [ "$specialInstall" != "" ]
    then
        eval "$specialInstall"
    fi

# Add in a "sudo apt-get install -f -y"

# If it is present, ask about removing it.
elif [ $out -eq 0 ]; then
    echo $package is installed. Do you want to remove it?
    options="Remove Leave"
    PS3="Choose option: "
    select option in $options
    do
        if [ $option == 'Leave' ]
        then
            break
        fi
        echo Removing $package using removal function in this file
        
        # Run any special removal instructions.
        if [ "$specialRemove" != "" ]
        then
            eval $specialRemove
        fi

        # If removing it, remove package and it's config files.
        if [ "$package" != "" ]
        then
            sudo apt-get -y --purge remove $package
        fi

        # If removing it, remove package and it's config files.
        if [ "$postreqs" != "" ]
        then
            eval "$postreqs"
        fi

        # Remove unneeded packages, and clean up package repositories.
        sudo apt-get autoremove && 
        sudo apt-get autoclean && 
        sudo apt-get clean

        break
    done
fi
