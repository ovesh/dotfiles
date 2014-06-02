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

alias diffmerge='/Applications/DiffMerge.app/Contents/Resources/diffmerge.sh'
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'
alias b='brancher'
alias sarlac='pushd /Users/ovesh/reps/portal/kvh-portal/opt/kvh-portal/sarlacc/'
alias authp='pushd /Users/ovesh/reps/corp-sso/opt/auth-provider/'
alias martin='pkgit --ng --np'
alias grepp='grep -rn --color=always'
alias rmorig='find . -name "*.orig" -exec rm {} \;'

bindkey '^R' history-incremental-pattern-search-backward
bindkey '^[[Z' reverse-menu-complete

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export EDITOR=vim

export LC_CTYPE=en_US.UTF-8

export JAVA_HOME=/usr/java/jdk1.6.0_21_x64
export INDEED_PROJECT_DIR=$HOME/reps
PATH=$INDEED_PROJECT_DIR/javadev/bin:$PATH
export INDEED_CONFIG_DIR=$INDEED_PROJECT_DIR/javadev/myconfig
