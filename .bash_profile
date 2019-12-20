# This is Setting created for the real machine
# (In Virtual Machines, Clock is incorrect.)
# PS1="[\d \@] \[\e[1;37m\]\w \[\e[0;32m\]\\$\[\e[m "

export TERM=linux

function customps1()
{
	local fg_YELLOW='\e[1;33m'
	local fg_WHITE='\e[1;37m'
	local fg_GREEN='\e[0;32m'

	local bg_GREEN='\e[1;42m'

	if [ $LOGNAME == "root" ]; then
		local prompt='#'
	else
		local prompt='$'
	fi
	
	PS1="\[$fg_YELLOW\]\! \[$fg_WHITE\]\[$bg_GREEN\]\w\
\[$fg_GREEN $prompt\e[m\] "
}
customps1

# History memory/file size
HISTSIZE=10
HISTFILESIZE=0
