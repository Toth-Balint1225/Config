#!/bin/bash

normal=0
bold=1
faint=2
italic=3
underline=4

black=30
red=31
green=32
yellow=33
blue=34
magenta=35
cyan=36
lightgray=37
gray=90
lightred=91
lightgreen=92
lightyellow=93
lightblue=94
lightmagenta=95
lightcyan=96
white=97

bblack=40
bred=41
bgreen=42
byellow=43
bblue=44
bmagenta=45
bcyan=46
blightgray=47
bgray=100
blightred=101
blightgreen=102
blightyellow=103
blightblue=104
blightmagenta=105
blightcyan=106
bwhite=107

colors=(
$white
$white
$lightcyan
$cyan
$lightblue
$blue
)

start() {
	fmt=$1
	echo "\e[${fmt}m"
}

end() {
	echo "\e[0m"
}

bash_start() {
	fmt=$1
	echo "\[\033[${fmt}m\]"
}

bash_end() {
	echo "\[\033[0m\]"
}

dbg() {
	echo -en "$1 -> "
	echo "$1"
}

for col in ${colors[@]}; do 
	echo "$(bash_start $col) --- $(bash_end)"
done

#hostfmt="${green};${bold}"
#dbg "[$(bash_start $hostfmt)\u@\h$(bash_end)]"
#
#dirfmt="${blue};${bold}"
#dbg ":[$(bash_start $dirfmt)\W$(bash_end)]"
#
#gitfmt="${magenta};${bold}"
#dbg ":($(bash_start $gitfmt)%s$(bash_end))"
#
#promptfmt="${white};${bold}"
#dbg "$(bash_start $promptfmt) $ $(end)"
#
#dbg "[$(bash_start $hostfmt)\u@\h$(bash_end)]:[$(bash_start $dirfmt)\W$(bash_end)]parse_git_branch\n$(bash_start $promptfmt)\$$(bash_end)"
