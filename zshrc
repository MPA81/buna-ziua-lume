# This file is created by the user <insert name here>!

## First and foremost we bind a key to vi editor

bindkey -v

## PROMPT options

# runs TRAPALARM() every $TMOUT seconds 
TMOUT=30

TRAPALRM() {
	# reset-prompt updates the prompt
	zle reset-prompt
}

setopt PROMPT_SUBST
PS1='%B%(2L.+.)%n|%D{%a %b%d}|%T %15<...<%~%(?..(%?%)) %# %b'

## We are going to try to bind a key to get a execute a
# command from the history line and move to the next

bindkey '^o' accept-line-and-down-history

# And one to make commands and previoius lines work together
# (Esc+q is what that reads, Savvyy?)

bindkey '\eq' push-line-or-edit

# next bindkey permits filename completion to happen mid-line

bindkey '^i' expand-or-complete-prefix


## WE are going to continue with a number of options that are commented out, 
# so that they can be easily turned on, or off as necessary.  REMEMEBER, 
# after you modify this file, to make the new set of options work, run 
# source .zshrc. For more info regarding the options listed go to
# http://zsh.sourceforge.net/Guide/zshguide02.html

## OH yeah, almost forgot, to revert to the original behaviour, some of 
# these will need to be set to original behavior and source .zshrc run.

# setopt SH_WORD_SPLIT

# setopt GLOB_SUBST
# setopt SH_FILE_EXPANSION

# setopt NO_NOMATCH
# setopt NO_BAD_PATTERN

# setopt NO_BG_NICE
# setopt NO_NOTIFY

# setopt NO_HUP

# setopt LOCAL_OPTIONS
# setopt LOCAL_TRAPS

# setopt PROMPT_PERCENT
# setopt PROMPT_SUBST

# setopt SH_OPTION_LETTERS

# setopt CSH_NULL_GLOB

# setopt NO_BEEP

# setopt AUTO_CD
# setopt CD_ABLE_VARS

setopt EXTENDED_GLOB 

setopt MULTIOS

setopt CORRECT
# setopt CORRECT_ALL
## NOTE: if you remove comment from above line, remove from line bellow as well
# alias mkdir='nocorrect mkdir'


## HISTORY options bellow

# setopt HIST_VERIFY

HISTSIZE=500
SAVEHIST=500
HISTFILE=~/.zsh_history

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Remove comment from next line for time command was started and how long it ran for
# setopt EXTENDED_HISTORY

setopt HIST_IGNORE_DUPS

setopt HIST_IGNORE_SPACE

# setopt HIST_NO_STORE
# setopt HIST_NO_FUNCTIONS

# setopt NO_HIST_BEEP

### Aliases

[[ -f ~/.aliasrc ]] && . ~/.zshrc

alias all='ls -al'

### Functions
## Hi Knucklehead! In zsh these have their own home:
## /bin/fns/. Personally I create a bin/fns in my ~
## ... By the by, make them individual files!
## on a new system, run: echo $path | grep bin.
## if the result is blank run: fpath=(~bin/fns $fpath)
## then run: autoload <function file name>

# today () {
#	echo -n "Today's date is: "
#	date +"%A, %B %-d, %Y"
#	}

# cd () {
#	new_directory="$*";
#	if [ $# -eq 0 ]; then
#		new_directory=${HOME};
#	fi
#	builtin cd "${new_directory}" && ls
#	}
