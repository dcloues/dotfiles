# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="sporty_256"

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
export EDITOR="vim"

# Customize to your needs...
bindkey '^R' history-incremental-search-backward
alias t="nocorrect todo.sh"
alias tl="nocorrect todo.sh list"
alias ta="nocorrect todo.sh add"

alias now="date +%Y%m_%d%H%M"

alias ack="ack-grep"
alias tma="tmux attach -t"
alias tmr="tmux rename-session"
alias h="hg"
alias hgd="hg diff"
alias hs="hg status"
alias hc="hg commit"
alias hcm="hg commit -m"
alias hc="hg log"
alias hsum="hg summary"
alias hrnb="hg revert --no-backup"
alias qa="hg qapplied"
alias qp="hg qpop"
alias qpu="hg qpush"
alias qs="hg qseries"
alias qr="hg qrefresh"

alias dus="du -hs"
alias dud="du -hc --max-depth=1"

alias xzf="tar xzf"

alias ll="ls -l"
alias la="ls -al"
alias ltr="ls -ltr"
alias latr="ls -latr"
alias lS="ls -lS"

alias -g L="| less"
alias -g H="| head"

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm


export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
export LESS="-FRX"
