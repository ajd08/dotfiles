function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls -F --color=auto
}

function ide () {
    tmux split-window -v -p 30
    tmux split-window -h -p 66
    tmux split-window -h -p 50
}


