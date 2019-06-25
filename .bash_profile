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
if [ -f ~/dotfiles/runcom/.inputrc ]; then
    bind -f ~/dotfiles/runcom/.inputrc
fi

# load alias config
if [ -f ~/dotfiles/.alias ]; then
    . ~/dotfiles/.alias
fi

# specific windows settings collected in this file.
if [ -f ~/dotfiles/.windows ]; then
    . ~/dotfiles/.windows
fi

# go lang settings
# https://tecadmin.net/install-go-on-ubuntu/ 
export GOROOT=/usr/local/go
export GOPATH=$HOME
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Git display
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\t \[\033[33m\]# \[\033[37m\]\u \[\033[33m\]\w\[\033[1;32m\]\$(parse_git_branch)\[\033[37m\] $ "
