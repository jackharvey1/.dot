for DOTFILE in "/Users/jackharvey/.dot/."{alias,functions,vars,node} do
do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
