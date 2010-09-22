# Flash-related stuff

# tail and watch flash's debug output log
alias tf="clear ; tail -100f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt"

# tail and watch flash's security policy file log
alias ts="clear ; tail -100f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/policyfiles.txt"

#export FLEX_HOME="/Users/dcloues/Development/flash/flex_sdk/flex_sdk_3.1.0.2710"
#export FLEX_HOME="/Users/dcloues/Development/flash/flex_sdk/flex_sdk_3.3.0"
export FLEX_HOME="/Users/dcloues/Development/flash/flex_sdk/flex_sdk_3.5.0.12683"
#export FLEX_HOME="/Users/dcloues/Development/flash/flex_sdk/flex_sdk_4.0.0.7219"

path_entry $FLEX_HOME/bin

function lsswc()
{
	unzip -p $1 catalog.xml | tr "\"" " " | awk '/def/ {print $3}' | sort
}
