# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion::complete:logvis-tail::' use-cache yes
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
setopt interactivecomments
setopt prompt_subst

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- ('$branch')'
  fi
}

# root prompt
[ $UID = 0 ] && export PROMPT=$'%{\e[0;31m%}[%{\e[0m%}%n%{\e[0;31m%}@%{\e[0m%}%M%{\e[0;31m%}:%{\e[0m%}%~%{\e[0;31m%}]%{\e[0m%}%# '
# normal user prompt
[ $UID != 0 ] && export PROMPT=$'%{\e[0;36m%}[%{\e[0m%}%n%{\e[0;36m%}@%{\e[0m%}%M%{\e[0;36m%}:%{\e[0m%}%~%{\e[0;36m%}:%{\e[0m%}%*%{\e[0;36m%}]%{\e[0m%}%$(git_branch_name)# '

alias grepp='grep -rn --color=always'
alias rmorig='find . -name "*.orig" -exec rm -v {} \;'
alias boop='aplay /usr/share/sounds/speech-dispatcher/test.wav'
alias cb='xclip -selection clipboard'
alias mvim='open -a MacVim'

bindkey '^R' history-incremental-pattern-search-backward
bindkey '^[[Z' reverse-menu-complete

export EDITOR=vim

export LC_CTYPE=en_US.UTF-8

function gvim () { (/usr/bin/gvim -f "$@" &) }
export AWS_CREDENTIAL_FILE=$HOME/.aws/aws_credential_file

export DISABLE_PYENV=1

# for pyenv on osx
#eval "$(pyenv init -)"

#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# export GOPATH=$HOME/go
# export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
# export GO111MODULE=on
# export GOPROXY=https://nexus.corp.indeed.com/repository/go/,https://modprox-proxy.corp.indeed.com/
# export TAGGIT_REGISTRY_URL=https://mods.sandbox.indeed.net/
# export GOSUMDB=off

alias bell='echo -e "\a"'

OLDIFS=$IFS
IFS=":"
IFS=$OLDIFS
export ETC=/Users/avishai/etc

export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/Users/avishai/bin

autoload -U zmv
alias mmv='noglob zmv -W'
