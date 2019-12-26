# This is Bash_profile

######## Index ########
# 1. Customizing Prompt
# 2. History Size
#######################

# 1. Customizing Prompt
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
\[$fg_GREEN\] ${prompt}\[\e[m\] "
}
customps1

# 2. History Size
HISTSIZE=10
HISTFILESIZE=0
