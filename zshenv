# ZSH environment file

typeset -U path

# append to path
path+=('~/bin')

# export to sub-processes (make it inherited by child processes)
export PATH

# zsh specific functions path
[[ $fpath = *<user>* ]] || fpath=(~<user>/bin/fns $fpath)
autoload ${fpath[1]}/*(:t)
# if above gives you an error try adding a function to <user>/bin/fns

# if unsure, to find <user> type whoami 
