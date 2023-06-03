alias gadd='git add'
alias glone='git clone'
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
alias gommit='git commit'
alias gamend='git commit --amend'
alias gwip='git add . && git commit --allow-empty-message --no-edit'
alias gog='git log --abbrev-commit --pretty=oneline'
alias gograph='git log --abbrev-commit --pretty=oneline --graph'
alias gatus='git status'
alias geckout='git checkout'
alias gevert='git revert'
alias glame='git blame'
alias geset='git reset'
alias gemote='git remote'
alias glean='git clean'
alias gwitch='git switch'
alias gubmodule='git submodule'
alias gag='git tag'
alias gmv='git mv'
alias grm='git rm'
alias gisect='git bisect'
alias gow='git show'
alias gestore='git restore'
alias gerrypick='git cherry-pick'
alias geflog='git reflog'
alias gwhatchanged='git whatchanged'

function gignore() {
    [[ -n $1 ]] && wget --quiet --output-document .gitignore https://raw.githubusercontent.com/github/gitignore/main/$1.gitignore
}
