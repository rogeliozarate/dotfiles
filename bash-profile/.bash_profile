# .bash_profile
# Rogelio Zarate 
# i.am@rogeliozarate.com
# .bash_login Latest modification 2012-09-11T18:46:23

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/local/node/bin:$PATH
export PATH="/Users/cobi/Documents/code/scripts:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

#################################
export LANG=es_ES.UTF-8  # To have spanish chars displayed
export EDITOR='mate -w'
################################

# To colorize ls
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=''

# To input those chars
set meta-flag on
set input-meta on
set output-meta on
set convert-meta on

# I do not know where this came from
test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# sourcing for bashmarks

# first link the script to the directory
source ~/documents/code/scripts/bashmarks.sh

# alias 

# alias bash
alias ..='cd ..'
alias ...='cd ../..'
alias aliasl='alias -p'
alias epoch='date +%s'
alias h='history'
alias l='ls -ap'
alias la='ls -A'
alias ll='ls -l'
alias logo='mate /Users/cobi/Documents/logger.yml'
alias p='ps -A'
alias start='. start'
alias ip='curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+''

#alias bookmarks
alias bm='bookmark'
alias bms='bookmarksshow'

#alias picture
alias foto='isightcapture -t png "/Users/cobi/Pictures/Photo on `date +%Y-%m-%dat%H.%M.%S`.png"'
#alias development
alias m='mate .'
#panicdon'tpanic

# alias git
alias ga='git add .'
alias gb='git branch'
alias gc='git commit -a'
alias gcm='git commit -am'
alias gco='git checkout'
alias gd="git diff"
alias gf="git commit --amend -C HEAD"
alias gl='git log'
alias gp='git push'
alias gs='git status'
alias gsd='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'


#alias rails
alias rc='rails console'
alias rs='rails s'

#alias ruby
alias r='ruby -v'
alias rvi="rvm info"

#alias sqlite3
alias sql="sqlite3"

# alias taskwarrior
alias tk='task'
alias ta='task add'
alias tal='task all'
alias td='task $1 done'
alias tn='task $1 annotate'
alias tc='task calendar'
alias tl='task list'
alias tlp='task list project:"$1"'
alias tlo='task long'
alias tov='tc;tl'
alias tpi='task $1 priority:$2'
alias tpo='task $1 project:$2'
alias ts='t summary'

#alt
#video download
alias vdl='youtube-dl '


function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$BLUE[$RED\u@\h:\w$GREEN\$(parse_git_branch)$BLUE]\
$GREEN\> "
PS2='> '
PS4='+ '
}

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
proml
date
echo today in history------------------------------------------
cat  /usr/share/calendar/calendar.computer |grep `date +"%m/%d"`
cat  /usr/share/calendar/calendar.history |grep `date +"%m/%d"`
cat  /usr/share/calendar/calendar.christian |grep `date +"%m/%d"`
cat  /usr/share/calendar/calendar.lotr |grep `date +"%m/%d"`
cat  /usr/share/calendar/calendar.holiday |grep `date +"%m/%d"`
cat  /usr/share/calendar/calendar.judaic |grep `date +"%m/%d"`
cat  /usr/share/calendar/calendar.music |grep `date +"%m/%d"`
echo ----------------------------------------------------------
ruby -v
echo Remember whatever!


