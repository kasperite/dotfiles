export EDITOR=atom
export HISTFILESIZE=9000
export HISTSIZE=9000
export HISTCONTROL=ignoredups
export PS1='\w`__git_ps1` \$ '
alias be='bundle exec'

# make sure `brew install rbenv` was completed
eval "$(rbenv init -)"

# Make sure `brew install bash-completion` was completed
source "$(brew --prefix)/etc/bash_completion"
