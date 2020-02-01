osname=`uname -s`
if [[ "$osname" = "Darwin" ]]; then
    alias gvim="mvim"
    function vi() {
        dn=`dirname "$1"`
        fn=`basename "$1"`
        sn="$dn/.$fn.swp"
        if [[ -f "$sn" ]]; then
            osascript ~/.dotfiles/mvim-open.applescript "$1" "`basename "$1"`"
        else
            mvim "$1"
        fi
    }
elif [[ "$osname" = "Linux" ]]; then
    if [[ "$TERM" = "xterm" ]]; then
        alias vi="gvim"
    fi
fi

if [[ ! -f /etc/portage ]]; then
    export PS1="\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h';fi)\[\033[01;34m\] \W \$\[\033[00m\] "
fi

function weather() {
    curl -s http://wttr.in | sed '$d' | sed '$d'
}

