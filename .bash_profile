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
alias ls="ls -GFah"
# Give me ll!!!! Life is too short to be typing `ls -l` all the damn time!
alias ll="ls -l"

# Set Java 8 as default
# Yuck. But some things needs Java.
#
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home

# Node Version Management
# Critical for easily switching node version!
#
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export PS1='\u@\H:\w$ '

# Google cloud related stuff
# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/sstrauss/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/sstrauss/Downloads/google-cloud-sdk/completion.bash.inc'; fi