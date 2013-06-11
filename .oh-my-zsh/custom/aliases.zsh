# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
#alias l='ls -la'
alias ll='ls -l'
alias la='ls -lA'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

alias ownall='sudo chown -cR ozsekd:users'
alias own='sudo chown -c ozsekd:users'
alias l='ls -Alh --color=always'
alias c='clear'

alias urlclean="awk -F/ '!seen[$3]++'"
alias lsp="stat -c '%U:%G %a %A %n'"
salias pxg='pacmanxg'

salias rmd='rm -vfr'
salias rm='rm -vf'
