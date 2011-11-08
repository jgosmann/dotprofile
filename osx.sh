#!/usr/bash

export CPATH=/opt/local/include:$CPATH
export LIBRARY_PATH=/opt/local/lib:$LIBRARY_PATH

# MacPorts Installer addition on 2009-03-02_at_15:56:49: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

# MacPorts Installer addition on 2009-10-05_at_17:35:50: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

