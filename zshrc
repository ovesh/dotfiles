# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/ovesh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install

setopt inc_append_history
setopt share_history

# root prompt
[ $UID = 0 ] && export PROMPT=$'%{\e[0;31m%}[%{\e[0m%}%n%{\e[0;31m%}@%{\e[0m%}%M%{\e[0;31m%}:%{\e[0m%}%~%{\e[0;31m%}]%{\e[0m%}%# '
# normal user prompt
[ $UID != 0 ] && export PROMPT=$'%{\e[0;36m%}[%{\e[0m%}%n%{\e[0;36m%}@%{\e[0m%}%M%{\e[0;36m%}:%{\e[0m%}%~%{\e[0;36m%}]%{\e[0m%}%# '

alias authp='pushd /Users/ovesh/reps/corp-sso/opt/auth-provider/'
alias grepp='grep -rn --color=always'
alias rmorig='find . -name "*.orig" -exec rm {} \;'
alias boop='aplay /usr/share/sounds/speech-dispatcher/test.wav'
alias open='xdg-open'
alias cb='xclip -selection clipboard'
alias anti='ant -Dresolve_run=true'
alias soft='kill -15'

bindkey '^R' history-incremental-pattern-search-backward
bindkey '^[[Z' reverse-menu-complete

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export EDITOR=vim

export LC_CTYPE=en_US.UTF-8

export JAVA_HOME=/usr/lib/jvm/java-6-oracle/
export INDEED_PROJECT_DIR=$HOME/reps
# PATH is already marked as exported
PATH=$INDEED_PROJECT_DIR/javadev/bin:$PATH
export INDEED_CONFIG_DIR=$INDEED_PROJECT_DIR/javadev/myconfig
function gvim () { (/usr/bin/gvim -f "$@" &) }
export AWS_CREDENTIAL_FILE=$HOME/.aws/aws_credential_file

# add packer to path
PATH=/usr/local/packer:$PATH
