# Direnv
#
eval "$(direnv hook bash)"

# Terminal Colours
#
export LSCOLORS="EHfxcxdxBxegecabagacad"
alias ls="ls -GFah"
alias ll="ls -l"

# Set Java 8 as default
#
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home

# Node Version Management
#
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export PS1='\u@\H:\w$ '

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sstrauss/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/sstrauss/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sstrauss/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/sstrauss/Downloads/google-cloud-sdk/completion.bash.inc'; fi
