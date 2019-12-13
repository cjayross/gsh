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

function gebase() {
    git rebase ${*:---interactive}
}

alias gush='git push'
alias gorcepush='git push --force-with-lease'
alias gull='git pull'
alias giff='git diff'
alias gash='git stash'
alias gerge='git merge'
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

compdef _git-push gush
compdef _git-push gorcepush
compdef _git-pull gull
compdef _git-add gadd
compdef _git-diff giff
compdef _git-stash gash
compdef _git-merge gerge
compdef _git-fetch getch
compdef _git-branch granch
compdef _git-init ginit
compdef _git-rebase gebase
compdef _git-commit gommit
compdef _git-commit gamend
compdef _git-log gog
compdef _git-status gatus
compdef _git-checkout geckout
compdef _git-revert gevert
compdef _git-blame glame
compdef _git-reset geset
compdef _git-remote gemote
