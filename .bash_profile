for DOTFILE in "/Users/jharvey1/."{functions,node,rvm,alias} do
do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done
