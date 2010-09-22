export PGDATA=/Users/dcloues/var/postgres

alias pgstart="pg_ctl -l ~/var/postgres/server.log start"
alias pgstop="pg_ctl stop -s -m fast"