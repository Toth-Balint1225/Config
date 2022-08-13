#!/bin/bash

# dmenu helper, intended to use with my xmonad
# manages shutdown, restart and logout

declare -a options=(
"Shutdown"
"Suspend"
"Restart"
"Exit"
)

choise=$(printf '%s\n' "${options[@]}" | dmenu -i -c -bo 3 -l 4 -p '>' -nb '#282A36' -nf '#98be65' -sb '#98be65' -sf '#282A36')

if [ $choise = "Shutdown" ]; then
	shutdown -P now
elif [ $choise = "Restart" ]; then
	shutdown -r now
elif [ $choise = "Suspend" ]; then
	systemctl suspend
elif [ $choise = "Exit" ]; then
	exit 0
fi
