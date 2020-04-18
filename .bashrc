# change directories
alias ..="cd ..; ls"
alias ...="cd ..; cd ..; ls"
alias ....="cd ..; cd..; cd..; ls"
alias root="cd /"
alias home="cd ~"

# general alias
alias c="clear"
alias h="history"
alias p="bat -pp" # install bat 
alias v="vim"

# git alias
alias gd="git diff"
alias ga="git add -A"
alias gc="git commit -m"
alias gs="git status"
alias gco="git checkout"
alias gpom="git pull origin master"
alias gbra="git branch"
alias gush="git push"
alias gul="git pull"
alias glog='git log --name-status --graph --pretty=format:"%C(bold red)%h%Creset -%C(yellow)%d%Creset %s %C(yellow)-%Creset %C(bold blue)%an%Creset %C(bold green)(%cr)%Creset"'
alias gpom='git pull origin master'
alias gundo='git reset HEAD~' # undo last git commit

#Java setup
# export JAVA_HOME=

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

alias ls='ls -aFG' # color and filetype 
alias lx='ls -lXB' # sort by extension 
alias lt='ls -ltr' # sort by date 

# set prompt
NO_COLOR="\[\033[0m\]"
WHITE="\[\033[1;37m\]"
BLACK="\[\033[0;30m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
RED='\[\033[0;31m\]'
LIGHT_RED="\[\033[1;31m\]"
PURPLE="\[\033[0;35m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
YELLOW="\[\033[0;33m\]"
LIGHT_YELLOW="\[\033[1;33m\]"
GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
function prompt_command () {
  branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ "$branch" == "" ]; then
    export PS1="$CYAN\u:$GREEN\W$NO_COLOR "
  else
    export PS1="$CYAN\u:$GREEN\W[$RED$branch$GREEN]$NO_COLOR "
  fi
}
PROMPT_COMMAND=prompt_command
export CLIOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx