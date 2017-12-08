export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jharvey1/.oh-my-zsh

ZSH_THEME="geometry/geometry"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(nvm battery history time)

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

DEFAULT_USER=jharvey1

COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws npm)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

source $ZSH/oh-my-zsh.sh
for DOTFILE in "/Users/jharvey1/."{alias,functions,vars,node,rvm,eslintrc} do
do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done
