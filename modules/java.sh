export CATALINA_HOME="/Users/dcloues/Development/servers/apache-tomcat-6.0.26"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home"
export SMARTFOX_HOME='/Users/dcloues/Development/servers/smartFoxServer-1.6.5'

alias tc="cd ~/tmp ; catalina.sh run ; cd - "

path_entry ${CATALINA_HOME}/bin
path_entry ${JAVA_HOME}/bin