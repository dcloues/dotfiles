alias sup="svn up"
alias svx="svn status --ignore-externals | grep -v ^X"
alias uv="svn status | awk '/^\?/ {print $2}'"
alias auv="svn status | awk '/^\?/ {print $2}' | xargs svn add"

# danger!
alias cleanwc="svn status --no-ignore | grep '^\?' | sed 's/^\?      //' | xargs rm -rf"

export SVN_EDITOR="mate -w"