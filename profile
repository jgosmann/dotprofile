export CLICOLOR=''
export EDITOR=vim
export HISTCONTROL='ignoreboth'
export PS1='\h:\w> '

export CPATH=/opt/local/include:$CPATH
export LIBRARY_PATH=/opt/local/lib:$LIBRARY_PATH
export PATH="$PATH:~/bin"

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

if [ -f ~/.bash/git-prompt.sh ]; then
    . ~/.bash/git-prompt.sh
fi

if [ -f ~/.bash/alias.sh ]; then
    . ~/.bash/alias.sh
fi

if [ -f ~/.bash/private.alias.sh ]; then
    . ~/.bash/private.alias.sh
fi

# MacPorts Installer addition on 2009-03-02_at_15:56:49: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

# MacPorts Installer addition on 2009-10-05_at_17:35:50: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

