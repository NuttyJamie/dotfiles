# This is Bash_profile

######## Index ########
# 1. Customizing Prompt
# 2. History Size
# 3. Locale Setting
# 4. Alias
# 5. Functions
# 6. Input method(ibus daemon)
#######################


# 1. Customizing Prompt

	export fg_YELLOW="\e[1;33m"
	export fg_WHITE="\e[1;37m"
	export fg_GREEN="\e[0;32m"
	export bg_GREEN="\e[1;42m"
	PS1="\[$fg_YELLOW\]\! \[$fg_WHITE\]\[$bg_GREEN\]\w\[$fg_GREEN\] \$\[\e[m\] "

# 2. History Size

	HISTSIZE=50
	HISTFILESIZE=0

# 3. Locale Setting
#	Erase '#' to use this option. 
#	export LANG=ko_KR.utf8

# 4. Alias
	alias ls="ls $LS_OPTIONS"

# 5. Functions
#  5-1. gt (goto, cd+tree)
    function gt() {
		cd "$1";
		tree -L 1;
	}

# 6. Input method(ibus daemon)

	XIM_PROGRAM="/usr/bin/ibus-daemon -drx"
	$XIM_PROGRAM 

# 7. Misc

	export LESS=-MR
