osname=`uname -s`
if [[ "$osname" = "Darwin" ]]; then
    alias gvim="mvim"
    alias vi="mvim"
elif [[ "$osname" = "Linux" ]]; then
    if [[ "$TERM" = "xterm" ]]; then
        alias vi="gvim"
    fi
fi
