#!/bin/bash

####### Function definition section ####################################
###
groupsMenu () {
	groups="$groups Quit"
	PS3=$'\nSelect Installation Group: '

	while true
	do
		clear
		echo Master Installer: group selection level.
		select group in $groups
		do
			if [ $group == 'Quit' ]
			then
				return
			fi

			./Master.sh $group
			break

		done
	done
}

####### Operations Section #############################################
###
groups=$( ls -d */ )
groups=$(sed 's/\///' <<<"$groups")

clear
groupsMenu
clear
