#!/bin/bash
# Git prompt code copied from https://gist.github.com/31967
# written by Scott Woods <scoot@westarete.com> who based his work on halbtuerke
# and lakiolen.

BOLD="\[\033[1m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
MAGENTA="\[\033[35m\]"
OFF="\[\033[m\]"

# Detect whether the current directory is a git repository.
function is_git_repository {
      git branch > /dev/null 2>&1
}

# Determine the branch/state information for this git repository.
function set_git_branch {
    # Capture the output of the "git status" command.
    git_status="$(git status 2> /dev/null)"

    # Set color based on clean/staged/dirty.
    if [[ ${git_status} =~ "working directory clean" ]]; then
        state="${GREEN}"
    elif [[ ${git_status} =~ "Changes to be committed" ]]; then
        state="${YELLOW}"
    else
        state="${RED}"
    fi

    # Set arrow icon based on status against remote.
    remote_pattern="# Your branch is (.*) of"
    if [[ ${git_status} =~ ${remote_pattern} ]]; then
        if [[ ${BASH_REMATCH[1]} == "ahead" ]]; then
            remote="↑"
        else
            remote="↓"
        fi
    else
        remote="|"
    fi
    diverge_pattern="# Your branch and (.*) have diverged"
    if [[ ${git_status} =~ ${diverge_pattern} ]]; then
        remote="↕"
    fi

    # Get the name of the branch.
    branch_pattern="^# On branch ([^${IFS}]*)"
    if [[ ${git_status} =~ ${branch_pattern} ]]; then
        branch=${BASH_REMATCH[1]}
    fi

    # Set the final branch string.
    BRANCH="${remote}${state}${branch}${COLOR_NONE}"
}

function prom1 {
    local EXITSTATUS="$?"

    if is_git_repository ; then
        set_git_branch
    else
        BRANCH=''
    fi

    PROMPT="\h:${BLUE}\W${OFF}${BRANCH}"

    if [ "${EXITSTATUS}" -eq 0 ]
    then
       PS1="${PROMPT}${GREEN}>${OFF} "
    else
       PS1="${PROMPT}${RED}>${OFF} "
    fi
}

PROMPT_COMMAND=prom1

