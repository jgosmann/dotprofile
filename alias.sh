#!/bin/bash
alias mysqlstart="sudo /opt/local/bin/mysqld_safe5"
alias mysqlstop="/opt/local/bin/mysqladmin5 -u root -p shutdown"
if ! (type -p netcat > /dev/null); then
    alias netcat=gnetcat
fi
