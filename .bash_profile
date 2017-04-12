export GOROOT=/usr/local/go  # default installation
export GOPATH=/Users/$(whoami)/Documents/go
export GAEPATH=/Users/$(whoami)/Documents/google-cloud-sdk
export MARVEL2=/Users/$(whoami)/Documents/marvel2

export PATH=/usr/local/bin/:$PATH
export PATH=$GOROOT/bin:$GOPATH:$GOPATH/bin:$GAEPATH:$GAEPATH/bin:$PATH

export GOPATH=$GOPATH:$MARVEL2:$MARVEL2/go:$MARVEL2/go/src

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/junyoung/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/junyoung/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/junyoung/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/junyoung/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@$HOSTNAME \w$(__git_ps1)]\$ ' 

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
