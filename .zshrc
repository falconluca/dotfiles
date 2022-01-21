PATH=$PATH:/Users/luca/mongodb/mongodb-macos-x86_64-5.0.5/bin
alias mongo-up='mongod --dbpath /usr/local/var/mongodb'

# Greetings 
#source ~/banner.sh
echo
cal
python3 $HOME/idioms.py

# Recommendation
echo
echo '👇 Try this: '
echo '- (TODO:做成函数) curl cheat.sh/cal'
echo '- cmatrix'
echo '- https://explainshell.com/explain?cmd=pstree+-p'
echo '- find xarg trash'

# Load configuration
source ~/.env
source ~/.aliases
source ~/.alias_git
source ~/.alias_docker
source ~/.alias_k8s
source ~/.functions

# Enable smart completion
autoload -U compinit
compinit

# Automatically update without prompting.
DISABLE_UPDATE_PROMPT="true" 

# ZSH THEMES
#ZSH_THEME="agnoster"
#ZSH_THEME="awesomepanda"
#ZSH_THEME="Avit"

# Zsh Plugins 
plugins=(
  git 
  history 
  jsontools 
  
  zsh-syntax-highlighting 
  zsh-autosuggestions 
)

source $ZSH/oh-my-zsh.sh
