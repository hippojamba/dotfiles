# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
. "$HOME/.bashrc"
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

# go lang settings
# https://tecadmin.net/install-go-on-ubuntu/ 
export GOROOT=/usr/local/go
export GOPATH=$HOME
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Git display
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# promt settings
blue=$(tput setaf 111);
green=$(tput setaf 70);
orange=$(tput setaf 222);
red=$(tput setaf 210)
yellow=$(tput setaf 220);
white=$(tput setaf 15);

export PS1="\t - \[${orange}\]\u \[${white}\]in \[${red}\]\w \[${white}\]on\[${blue}\]\$(parse_git_branch) \[${white}\]$"
