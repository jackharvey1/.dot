for DOTFILE in "/Users/jharvey1/.dot/."{alias,functions,node,rvm} do
do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done
