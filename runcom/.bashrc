# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac