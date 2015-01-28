osname=`uname -s`
if [[ "$osname" = "Darwin" ]]; then
    alias gvim="mvim"
    alias vi="mvim"
elif [[ "$osname" = "Linux" ]]; then
    if [[ "$TERM" = "xterm" ]]; then
        alias vi="gvim"
    fi
fi

if [[ ! -f /etc/portage ]]; then
    export PS1="\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h';fi)\[\033[01;34m\] \W \$\[\033[00m\] "
fi
