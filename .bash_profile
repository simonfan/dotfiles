# load .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# prompt
# Username@hostname, the date and time, and the current working directory
#export PS1='\u \D{%H:%M:%S} \w φ '

#######
# PS1 #
#######
export PS1="\u \D{%H:%M:%S} \w φ "

###########
# aliases #
###########

########
# carbono2 
########
alias carbono2='electron $HOME/Desktop/code/carbono2'

# applications
alias sublime='open -a Sublime\ Text\ 2'
alias brackets='open -a Brackets'
alias meld='open -a meld'
alias terminal='open -a iTerm -n'
alias chrome='open -a Google\ Chrome'
alias chrome-unsafe='open -n -a "Google Chrome" --args --user-data-dir=/tmp/temp_chrome_user_data_dir_for_cordova_browser --disable-web-security'

# directory cd'ers
alias fab='cd ~/Desktop/\ /fabrica/code'
alias fabm='cd ~/Desktop/\ /fabrica/code/UniversoPortal2/public/modules'

# typos
alias gti='git'
alias snv='svn'

# general shortcuts
alias ex='exit'

# list in line
alias l='ls -G'
alias ll='ls -ogGF'
alias grep='grep -i --color'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias more='less -i'
alias less='less -i'
alias jfmt='python -mjson.tool'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

# make dir and cd into it.
md () { mkdir -p "$@" && cd "$@"; }

########
# code cd #
########
code () {
  cd "$HOME/Desktop/code";
  cd ${1:-.};
}
_code () {
    # Set
    IFS=$'\n' tmp=( $(compgen -W "$(ls "$HOME/Desktop/code")" -- "${COMP_WORDS[$COMP_CWORD]}" ))
    COMPREPLY=( "${tmp[@]}" )
}
complete -o default -F _code code
########
# z cd #
########

########
# habemus cd #
########
habemus () {
    cd "$HOME/Desktop/code/habemus";
    cd ${1:-.};
}
_habemus () {
    # Set
    IFS=$'\n' tmp=( $(compgen -W "$(ls "$HOME/Desktop/code/habemus")" -- "${COMP_WORDS[$COMP_CWORD]}" ))
    COMPREPLY=( "${tmp[@]}" )
}
complete -o default -F _habemus habemus
########
# z cd #
########

# virtual machine
alias vm='VBoxManage startvm --type headless '

##################
# autocompletion #
##################
source ~/git-completion.bash
source ~/docker-completion.bash

########
# PATH #
########
# path
export PATH=~/Desktop/code/android/adt-bundle-mac-x86_64-20140702/sdk/platform-tools:$PATH
export PATH=~/Desktop/code/android/adt-bundle-mac-x86_64-20140702/sdk/tools:$PATH

# Go
export GOPATH=~/Desktop/code/go

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# MacPorts Installer addition on 2015-02-04_at_18:56:57: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

##########
# DOCKER #
##########
# docker environment setting
alias setdocker_env='eval "$(docker-machine env default)"'

######################
# NODE TESTING STUFF #
######################
alias own-npm='sudo chown -R $(whoami) ~/.npm'

# aws
complete -C '/usr/local/bin/aws_completer' aws
export PATH=/usr/local/bin:$PATH
