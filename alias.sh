#!/bin/bash
alias mysqlstart="sudo /opt/local/bin/mysqld_safe5"
alias mysqlstop="/opt/local/bin/mysqladmin5 -u root -p shutdown"
alias postgres-restart="sudo -u postgres /Library/PostgreSQL/9.0/bin/pg_ctl -D /Library/PostgreSQL/9.0/data restart"
if ! (type -p netcat > /dev/null); then
    alias netcat=gnetcat
fi
