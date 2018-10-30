#!/bin/bash

####### Function definition section ####################################
###
scriptsMenu () {
	
	groupName=$1
	scripts="$scripts Quit"
	PS3=$'\nSelect script number: '

	while true
	do
		echo $groupName installation scripts:
		select script in $scripts
		do
			if [ $script == 'Quit' ]
			then
				return
			fi

			./$groupDir/$script
			echo ""
			break

		done
	done
}

####### Operations Section #############################################
###
groupDir=$1
scripts=$( ls $groupDir | egrep '(\.sh)' )
groupName=$(sed 's/\///' <<<"$groupDir")

clear
scriptsMenu $groupName
