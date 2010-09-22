export ANT_HOME=/usr/share/ant
export ANT_OPTS="-Xmx1024m -XX:MaxPermSize=2048m -Djava.awt.headless=true"
export ANT_ARGS="-listener com.google.code.ant.growlnotify.GrowlListener"