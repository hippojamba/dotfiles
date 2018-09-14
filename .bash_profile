# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# bind case insensitive on startup
if [ -f ~/dotfiles/.inputrc ]; then
    bind -f ~/dotfiles/.inputrc
fi

if [ -f ~/.alias ]; then
    . ~/.alias
fi

# Specific windows settings collected in this file.
if [ -f ~/.windows ]; then
    . ~/.windows
fi

# go lang settings
# https://tecadmin.net/install-go-on-ubuntu/ 
#export GOROOT=/usr/local/go
#export GOPATH=$HOME/golang
#export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

