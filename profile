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

#PATH="/usr/local/bin:$PATH"

#PATH=$INDEED_PROJECT_DIR/javadev/bin:$PATH
#PATH="/usr/local/sbin:$PATH"
#launchctl setenv PATH $PATH

export INDEED_PROJECT_DIR=$HOME/reps

# BEGIN env Setup -- Managed by Ansible DO NOT EDIT.

# Single-brace syntax because this is required in bash, dash, zsh, etc
if [ -e "$HOME/env/etc/indeed_profile" ]; then
    . "$HOME/env/etc/indeed_profile"
fi

# Add ~/env/bin to your PATH to use the shared shell scripts from delivery/env
if [ -d "$HOME/env/bin" ]; then
    PATH="$HOME/env/bin:$PATH"
fi

# On OSX, explicitly source .bashrc so that OS X bash is guaranteed to include all definitions, changing .bashrc to .zshrc for zsh
if [ "Darwin" = "$(uname -s)" ]; then
    [ -s "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi

# END env Setup -- Managed by Ansible DO NOT EDIT.
