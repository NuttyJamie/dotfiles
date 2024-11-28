# This is bashrc file

if [ -f ~/.bash_profile ]; then
    source ~/.bash_profile
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jamie/Packages/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jamie/Packages/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jamie/Packages/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jamie/Packages/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

