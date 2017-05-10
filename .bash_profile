alias ll='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias pauli='ssh root@pauli.int.aberger.at'


#Show or Hide hidden Files

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


#Pretend pip command if no virtualenv is activated

export PIP_REQUIRE_VIRTUALENV=true

gpip() {
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

#for brew oracle client

#export PATH="/usr/local/lib:$PATH"

#for virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

#Git Branch in CommandLine
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
export PS1="\h:\W\$(parse_git_branch) \u$ "
