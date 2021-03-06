# If not running interactively, don't do anything
[[ $- == *i* ]] || return

alias ls='ls --human-readable --color=always'
alias grep='grep --color=always'
alias less='less -R'
alias mkdir='mkdir --parents'
alias gits='git status'
alias gitd='git diff'
alias gitl='git log'
alias gitf='git fetch origin'
alias gitm='git merge origin master'
alias gitp='git push origin master'
alias zim='python ~/apps/zim/zim.py'

export EDITOR=vim

# Prompt
#PS1="\u@\h \w > "
# Git prompt
source ~/.bin/git-prompt.sh
PROMPT_COMMAND='__git_ps1 "\u@\h \w" " > "'
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1

# The below conficts with git-prompt as they both modify PROMPT_COMMAND
# See: https://github.com/gnunn1/tilix/wiki/VTE-Configuration-Issue
# I want to keep git-prompt, hopefully this comment will help me solve
# potential issues...
#source /etc/profile.d/vte.sh

# Add /usr/local/lib to the library path
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH:+$LD_LIBRARY_PATH:}/usr/local/lib

export ORACLE_PATH=${ORACLE_PATH+$ORACLE_PATH:}$HOME/.sqlplus

# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Print machine info
POST_LOGIN="$(~/.bin/post_login.pl)"
echo -e "$POST_LOGIN"
