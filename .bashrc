function load_modules() {
    if [[ -d "$1" ]]; then
        for module in $(ls $1); do
            . $1/$module
        done
    elif [[ -n "$DEBUG" ]]; then
        echo "Unable to load modules in $1 (directory does not exist)"
    fi
}

function path_entry() {
    if [[ -d "$1" ]]; then
        if [[ -z "$2" ]]; then
            export PATH=$PATH:$1
        else
            export PATH=$1:$PATH
        fi
    elif [[ -n "$DEBUG" ]]; then
        echo "Unable to add path entry $1 (directory does not exist)"
    fi
}

echo "loading custom path entries..."
path_entry /usr/local/Cellar/python/2.7/bin
path_entry /usr/local/mysql/bin
path_entry /usr/local/bin
path_entry ~/bin

load_modules ~/.dotfiles/modules
load_modules ~/.dotfiles-private/modules

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

if [[ -a ~/.bashrc-private ]]; then
    . ~/.bashrc-private
fi

