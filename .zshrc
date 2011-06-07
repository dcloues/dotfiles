# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(deb git ruby ssh-agent vi-mode work-related)

source $ZSH/oh-my-zsh.sh
setopt AUTO_NAME_DIRS

# Customize to your needs...
bindkey '^R' history-incremental-search-backward
alias t="nocorrect todo.sh"
alias tl="nocorrect todo.sh list"
alias ta="nocorrect todo.sh add"

alias now="date +%Y%m_%d%H%M"

alias tma="tmux attach -t"
alias tmr="tmux rename-session"
alias hs="hg status"
alias hc="hg commit"
alias hcm="hg commit -m"
alias hc="hg log"
alias hsum="hg summary"
alias xzf="tar xzf"

alias ll="ls -l"
alias la="ls -al"
alias ltr="ls -ltr"
alias latr="ls -latr"
alias lS="ls -lS"

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
