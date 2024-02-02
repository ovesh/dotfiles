export PATH=$PATH:/opt/local/bin

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
# put the actual mvim in the path instead
# alias mvim='/Applications/MacVim.app/Contents/MacOS/MacVim'
alias diffmerge='/Applications/DiffMerge.app/Contents/Resources/diffmerge.sh'
alias authp='pushd /Users/ovesh/reps/corp-sso/opt/auth-provider/'

# maintain history across multiple terminal sessions
# shopt -s histappend
# export PROMPT_COMMAND="history -n; history -a"

# set -o vi

#PATH="/usr/local/bin:$PATH"

#PATH="/usr/local/sbin:$PATH"
#launchctl setenv PATH $PATH

# On OSX, explicitly source .bashrc so that OS X bash is guaranteed to include all definitions, changing .bashrc to .zshrc for zsh
if [ "Darwin" = "$(uname -s)" ]; then
    [ -s "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi
. "$HOME/.cargo/env"
