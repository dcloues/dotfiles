alias c="clear"
alias ll="ls -l"
alias la="ls -al"
alias lsd="ls -d"
alias p='pwd'

export ARCHFLAGS="-arch x86_64"
export CLICOLOR="TRUE"
export HISTIGNORE="&:ls:[bf]g:exit:g:g ss"
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend
set -o vi

#export PS1='\w$(__git_ps1)\n$(date +%H:%M:%S) \u \$ '
export PS1='$(date +%H:%M) \w$(__git_ps1) \$ '
