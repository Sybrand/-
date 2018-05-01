# There's no place like ~

I'm so sick of re-creating a happy bash environment every time I move to a new computer! Next time, I'm tapping me feet, cloning git, and going ~.

## Installing

You need to drop this into ~ ; the easiest way (I think) to do that is as follow:

    cd ~
    git init .
    git remote add origin git@github.com:Sybrand/-.git
    git pull origin master

## Other things

### On MAC

#### Install stuff

Install https://brew.sh/

Run:

   brew install git python3 nvm direnv postgresql
   pip3 install virtualenv virtualenvwrapper --user

#### Make dock be fast

I don't like the delay before dock shows, and I don't like the slow animation. Life is too short.

    defaults write com.apple.dock autohide-time-modifier -int 0 && killall Dock
    defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
