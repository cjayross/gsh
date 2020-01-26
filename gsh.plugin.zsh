function glone {
    local host https url repo program='gsh'

    zparseopts -D -E -host:=host -https=https

    if (( ! $# )); then
        echo "$program: missing repo"
        return 1
    fi

    repo=$1
    shift

    if (( $# )); then
        echo "$program: trailing arguments"
        return 1
    fi

    (( $#host )) || host=('' 'github.com')

    if (( $#https )); then
        url="https://$host[2]/"
    else
        url="git@$host[2]:"
    fi

    git clone $url$repo $*
}

function gadd() {
    git add ${*:---all}
}

alias gush='git push'
alias gorcepush='git push --force-with-lease'
alias gull='git pull'
alias giff='git diff'
alias gash='git stash'
alias gerge='git merge'
alias gebase='git rebase'
alias getch='git fetch'
alias granch='git branch'
alias ginit='git init'
alias gommit='git commit -am'
alias gamend='git commit --amend'
alias gog='git log'
alias gatus='git status'
alias geckout='git checkout'
alias gevert='git revert'
alias glame='git blame'
alias geset='git reset'
alias gemote='git remote'
alias glean='git clean'
