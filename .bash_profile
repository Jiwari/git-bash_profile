alias gs="git status"

alias gc="git commit -m"

alias gck="git checkout"

alias ga="git add"

alias hosts="vim /C/Windows/System32/drivers/etc/hosts"

pullAndPurge() {
	git pull -p && purgeBranches
}

purgeBranches() {
	git branch -vv | grep gone | awk '/: gone]/{print $1}' | xargs git branch -D
}
