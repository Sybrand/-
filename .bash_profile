# .bash_profile for macOS High Sierra 
#
#
# Direnv : https://direnv.net/
# Direnv is awesome. It hooks up my python virtual environments and is generally useful.
#
#eval "$(direnv hook bash)"
# Ruby. If for whatever reason you need ruby, you need to reload it to get the correct brew version.
#eval "$(rbenv init -)"

# Terminal Colours
# TODO: What's going on here???
#
export LSCOLORS="EHfxcxdxBxegecabagacad"

# Useful alliases
#
# Make ls better
# -G      Enable colorized output....
# -F      Display a slash (`/') immediately after each pathnam... (and other stuff)
# -a      Include directory entries whose names begin with a dot (.).
alias ls="ls -GFah"
# Give me ll!!!! Life is too short to be typing `ls -l` all the damn time!
# -h      When used with the -l option, use unit suffixes: Byte....
alias ll="ls -lh"

# Set Java 8 as default
# Yuck. But some things needs Java. Your version of Java is almost certainly going to differ from the one bellow:
#
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home

# Node Version Management
# Critical for easily switching node version!
#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Git branch in prompt.
# taken from: https://gist.github.com/joseluisq/1e96c54fa4e1e5647940
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Make bash prompt nice
# \u The username of the current user
# \H The hostname
# \w The current working directory
export PS1="\u@\h:\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "

# Google cloud related stuff
# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/sstrauss/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/sstrauss/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Python PATH
# BROKEN: This assumes you're using Python3.6! It suddenly starting breaking virtualenv when I upgraded to macOS High Sierra Version 10.13.6
#export PATH=~/Library/Python/3.6/bin:$PATH

# Bash completion
# (do: brew install bash-completion)
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

eval "$(pipenv --completion)"


# OpenShift Functions
function oc-project-cleanup()
{
    PRNO=${1:-FAIL}
    PROJ=moe-gwells-${2:-dev}
    ECHO=${3:-}
    for i in $( oc get all,pvc -n $PROJ -o name | grep pr-$PRNO )
        do $ECHO oc delete $i -n $PROJ
    done
}
#
function oc-cleanup()
{
    PRNO=${1:-FAIL}
    oc-project-cleanup $PRNO dev echo
    oc-project-cleanup $PRNO tools echo
    echo "Delete? [y|n]"
    read READ
    [ $READ != "y" ]||(
        oc-project-cleanup $PRNO dev
        oc-project-cleanup $PRNO tools
    )
}
#
function oc-tools-clean()
{
    for p in $( oc get pods -n moe-gwells-tools | grep -E "pr-[[:digit:]]*" | grep -v "Running" | awk '{print $1}')
        do oc delete po/$p -n moe-gwells-tools
    done
}

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

