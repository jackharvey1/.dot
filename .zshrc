export PATH=$HOME/bin:/usr/local/bin:$PATH
export COLOR

export AWS_PROFILE=saml

# do not check for secure directories
export ZSH_DISABLE_COMPFIX="true"

# Path to your oh-my-zsh installation.
export ZSH=/Users/jackharvey/.oh-my-zsh

# agnoster, bullet-train, geometry, hyperzsh, spaceship
ZSH_THEME="bullet-train"

# bullet-train theme config
BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  git
)
BULLETTRAIN_DIR_EXTENDED=1
BULLETTRAIN_GIT_COLORIZE_DIRTY=true

# spaceship theme config
SPACESHIP_CHAR_SYMBOL="$ "
SPACESHIP_TIME_SHOW=true
SPACESHIP_DIR_PREFIX=" "
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=true
SPACESHIP_NODE_PREFIX="with "

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

DEFAULT_USER=jackharvey

COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$PATH:/Users/jackharvey/Library/Application Support/Coursier/bin"
export PATH="$PATH:/Users/jackharvey/code/clearscore/mimi/"
export PATH="$PATH:/Users/jackharvey/code/clearscore/mimi/config-scripts"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
source $ZSH/oh-my-zsh.sh
for DOTFILE in "/Users/jackharvey/."{alias,functions,vars,node} do
do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

ID_RSA=$(ssh-add -l | grep id_rsa)
if [ -z "$ID_RSA" ]; then
    eval `ssh-add -k`
fi

# z
. /usr/local/etc/profile.d/z.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

