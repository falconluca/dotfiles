####################################################################
# Greetings 
####################################################################
python3 $HOME/idioms.py


####################################################################
# Basic configuration
####################################################################
export PATH=$PATH:~/bin

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH
export LANG="en_US.UTF-8"
export DEV="$HOME/dev"

# Configure for git
export PATH=/usr/local/libexec/git-core:$PATH


####################################################################
# Color
####################################################################
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

function red {
    printf "${RED}$@${NC}\n"
}

function green {
    printf "${GREEN}$@${NC}\n"
}

function yellow {
    printf "${YELLOW}$@${NC}\n"
}


####################################################################
# Aliases 
####################################################################
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='nvim'
alias vim='nvim'
alias l='ls'
alias ll='ls -al'


####################################################################
# Functions 
####################################################################
function ccat() {
    local style="monokai"
    if [ $# -eq 0 ]; then
        pygmentize -P style=$style -P tabsize=4 -f terminal256 -g
    else
        for NAME in $@; do
            pygmentize -P style=$style -P tabsize=4 -f terminal256 -g "$NAME"
        done
    fi
}


####################################################################
# Go envs 
####################################################################
export GOVERSION=go1.16.2
export GO_INSTALL_DIR=$HOME/go
export GOROOT=$GO_INSTALL_DIR/$GOVERSION
export GOPATH=$DEV/golang
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH
export GO111MODULE="on"
export GOPROXY=https://goproxy.cn,direct
export GOPRIVATE=
export GOSUMDB=off


####################################################################
# Initial 
####################################################################
cd $DEV

emojis=("👾" "🌐" "🎲" "🌍" "🐉" "🌵" "🍺")
EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}
export PS1="[\u@$EMOJI \W]\$ "
