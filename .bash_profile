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
blue=$(tput setaf 33);
green=$(tput setaf 64);
orange=$(tput setaf 166);
white=$(tput setaf 15);

export PS1="\t - \[${orange}\]\u \[${white}\]in \[${blue}\]\w \[${white}\]on\[${green}\]\$(parse_git_branch) \[${white}\]$"

export CLICOLOR=1
export LS_COLORS='no=1;90:di=1;94;107:ow=01;94;107:fi=1;94:ex=1;95'
export LSCOLORS='EhgxhxAdbxAcAcbxbxEhEh'
