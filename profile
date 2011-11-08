export CLICOLOR=''
export EDITOR=vim
export HISTCONTROL='ignoreboth'
export PS1='\h:\w> '

export PATH="$PATH:~/bin"

function load() {
    if [ -f "$1" ]; then
        . "$1"
    fi
}

load /opt/local/etc/bash_completion
load ~/.bash/git-prompt.sh
load ~/.bash/alias.sh
load ~/.bash/private.alias.sh

case `uname` in
    *Linux*)
        load ~/.bash/linux.sh
        ;;
    *Darwin*)
        load ~/.bash/osx.sh
        ;;
esac

