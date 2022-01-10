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
alias open='xdg-open'
alias cb='xclip -selection clipboard'
alias soft='kill -15'

bindkey '^R' history-incremental-pattern-search-backward
bindkey '^[[Z' reverse-menu-complete

export EDITOR=vim

export LC_CTYPE=en_US.UTF-8

#function gvim () { (/usr/bin/gvim -f "$@" &) }
function gvim () { (/usr/bin/gvim --servername GVIM --remote-tab "$@") ; wmctrl -a gvim }
export AWS_CREDENTIAL_FILE=$HOME/.aws/aws_credential_file

export PYENV_ROOT="$HOME/.pyenv"
PATH="$HOME/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# for the system pip3 and aws-cli
PATH=$PATH:/home/avishai/.local/bin

#export GOPATH=$HOME/go
#PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

alias bell='echo -e "\a" ; notify-send DONE'
alias copy='xclip -selection clipboard'
alias futp='sudo modprobe -r psmouse && sudo modprobe psmouse'
alias ivpn='nmcli c up "Indeed VPN" --ask'

# ignore terminal commands that start with '#'
setopt interactivecomments

# allow clearing the terminal with CTRL+K
clr(){
  printf "\ec"
}
bindkey -s '^k' 'clr^M'
