alias ll='ls -lGF'
alias ls='ls -GF'
alias cdr='cd "$(find . -type d | peco)"'

function gvim () {
    if [ -z "$1" ]; then
        echo please specifiy some string
        return
    fi

    FILENAME=$(grep $1 -r . | peco | cut -d: -f1)
    if [ "$FILENAME" ]; then
       vim $FILENAME
    fi
}

# peco-history
function peco-history-selection() {
    BUFFER=`history -n 1 | tac | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

