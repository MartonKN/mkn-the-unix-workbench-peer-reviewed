#!/usr/bin/env bash

function guess_n_files {
	local n_files=$(ls -1 -A | wc -l)
	read -p "How many files are in this directory? " user_guess
	
	if [[ "$user_guess" -lt 0 ]]
	then
		echo "Come on, that's silly."
	elif [[ "$user_guess" -lt "$n_files" ]]
	then
		echo "Too low. Try again."
		return 0
	elif [[ "$user_guess" -gt "$n_files" ]]
	then
		echo "Too high. Try again."
		return 0
	else
		echo "Congratulations, you figured it out."
		return 1
	fi
}

figured_it_out=0
while [[ figured_it_out -eq 0 ]]
do
	guess_n_files
	figured_it_out=$?
	echo " "
done

