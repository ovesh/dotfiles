export PATH=$PATH:/opt/local/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
# put the actual mvim in the path instead
# alias mvim='/Applications/MacVim.app/Contents/MacOS/MacVim'
alias diffmerge='/Applications/DiffMerge.app/Contents/Resources/diffmerge.sh'
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'
alias b='brancher'
alias sarlac='pushd /Users/ovesh/reps/portal/kvh-portal/opt/kvh-portal/sarlacc/'
alias authp='pushd /Users/ovesh/reps/corp-sso/opt/auth-provider/'
alias martin='pkgit --ng --np'

# maintain history across multiple terminal sessions
# shopt -s histappend
# export PROMPT_COMMAND="history -n; history -a"

# set -o vi

export PATH="/usr/local/bin:$PATH"
