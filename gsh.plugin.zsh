function glone {
    local host https url repo
    zparseopts -D -E -host:=host -https=https
    if [ -z $1 ]; then
        echo 'glone: missing repo'
    else
        repo=$1
        shift
    fi
    if (( $#host )); then
        host=('' 'github.com')
    fi
    if (( $#https )); then
        url="https://$host[2]/"
    else
        url="git@$host[2]:"
    fi
    git clone "$url$repo" $*
}

alias gush='git push'
alias gorcepush='git push --force-with-lease'
alias gull='git pull'
