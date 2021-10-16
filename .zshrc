# Greetings 
source ~/banner.sh
python3 $HOME/idioms.py
echo ""

# Load configuration
source ~/.env
source ~/.aliases
source ~/.functions

# Enable smart completion
autoload -U compinit
compinit

# Automatically update without prompting.
DISABLE_UPDATE_PROMPT="true" 

# ZSH THEMES
ZSH_THEME="agnoster"
# ZSH_THEME="awesomepanda"
# ZSH_THEME="Avit"

# Zsh Plugins 
plugins=(
  git 
  history 
  jsontools 
  
  zsh-syntax-highlighting 
  zsh-autosuggestions 
)

source $ZSH/oh-my-zsh.sh
