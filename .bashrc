# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


#fortune | cowsay -f tux


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$PATH:$HOME/bin
export HISTSIZE=5000
export HISTFILESIZE=10000
#export EDITOR="code -w"
export EDITOR='vim'


source ~/.nvm/nvm.sh
nvm use stable


shopt -s autocd
shopt -s histappend


bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'


export GOPATH=$HOME/go
export GOPROXY=https://goproxy.cn,direct
export GOPRIVATE=*.cds8.cn
export GO111MODULE="on"
export GOSUMDB=off
#export GOOS=darwin
#export GOARCH=arm64
export PATH=$GOPATH/bin:$PATH


source ~/.bash_alias
source ~/.bash_bin
source ~/.bash_k8s
source ~/.bash_darwin
source ~/.bash_prompt


eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
#brew update
