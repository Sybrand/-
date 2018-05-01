# .bash_profile for macOS High Sierra 
#
#
# Direnv : https://direnv.net/
# Direnv is awesome. It hooks up my python virtual environments and is generally useful.
#
eval "$(direnv hook bash)"

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
. "/usr/local/opt/nvm/nvm.sh"

# Make bash prompt nice
# \u The username of the current user
# \H The hostname
# \w The current working directory
export PS1='\u@\H:\w$ '

# Google cloud related stuff
# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/sstrauss/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/sstrauss/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Python PATH
#
export PATH=~/Library/Python/3.6/bin:$PATH
