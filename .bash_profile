for DOTFILE in "/Users/jackharvey/.dot/."{alias,functions,vars,node} do
do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done
