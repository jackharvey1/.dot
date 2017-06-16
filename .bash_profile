for DOTFILE in "/Users/jharvey1/.dot/."{alias,functions,vars,node,rvm} do
do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done
