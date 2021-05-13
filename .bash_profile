export EDITOR=code
export HISTFILESIZE=9000
export HISTSIZE=9000
export HISTCONTROL=ignoredups
export PS1='\w`__git_ps1` \$ '
export MEMCACHED_HOST=localhost:11211
export MEMCACHE_URL=localhost:11211
export LNZL_LOGGER_ALSO_LOGS_MESSAGES=yes
alias proxy='kubectl proxy'
alias be='bundle exec'
alias token='function _token(){ kubectl config use-context $1; /usr/local/bin/aws-iam-authenticator token -i $1 --token-only | pbcopy; };_token'
alias k8use='kubectl config use-context'
alias k8info='kubectl cluster-info'
alias k8bash='function _k8bash(){ kubectl exec -it $1 bash; };_k8bash'
alias k8pod='function _k8pod(){ kubectl get pods --server-print=false | grep $1; };_k8pod'
alias k8log='function _k8log(){ kubectl logs -f $1; };_k8log'
alias killport='function _killport(){ lsof -ti tcp:$1 | xargs kill; };_killport'
eval "$(rbenv init -)"
source "$(brew --prefix)/etc/bash_completion"

export PATH=/usr/local/bin/:$PATH
export JAVA_HOME=$(/usr/libexec/java_home -v1.8)
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH:/Users/lukasn/Sites/infrastructure/aws/kubernetes/docs/scripts"
export PATH="$HOME/.cargo/bin:$PATH"

. /usr/local/opt/asdf/asdf.sh

. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash