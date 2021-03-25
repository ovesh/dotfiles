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
[ $UID != 0 ] && export PROMPT=$'%{\e[0;36m%}[%{\e[0m%}%n%{\e[0;36m%}@%{\e[0m%}%M%{\e[0;36m%}:%{\e[0m%}%~%{\e[0;36m%}:%{\e[0m%}%*%{\e[0;36m%}]%{\e[0m%}%# '

alias authp='pushd /Users/ovesh/reps/corp-sso/opt/auth-provider/'
alias grepp='grep -rn --color=always'
alias rmorig='find . -name "*.orig" -exec rm {} \;'
alias boop='aplay /usr/share/sounds/speech-dispatcher/test.wav'
alias open='xdg-open'
alias cb='xclip -selection clipboard'
alias anti='ant -Dresolve_run=true'
alias soft='kill -15'
alias clip='MYSQL_JAR=lib/mysql--mysql-connector-java--mysql-connector-java--jar.jar ~/reps/javadev/bin/runCronjob.sh logrepo.clip.tools.ClipDaemon --props ~/.clip.properties --httpMonitorPort 22222 --log4j ~/log4j-cron.xml'
alias gradleo="gradle --offline"

bindkey '^R' history-incremental-pattern-search-backward
bindkey '^[[Z' reverse-menu-complete

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export EDITOR=vim

export LC_CTYPE=en_US.UTF-8

export INDEED_PROJECT_DIR=$HOME/reps
export CATALINA7_HOME=$INDEED_PROJECT_DIR/javadev/apache-tomcat-7.0.8
# PATH is already marked as exported
PATH=$INDEED_PROJECT_DIR/javadev/bin:$PATH
export INDEED_CONFIG_DIR=$INDEED_PROJECT_DIR/javadev/myconfig
#function gvim () { (/usr/bin/gvim -f "$@" &) }
function gvim () { (/usr/bin/gvim --servername GVIM --remote-tab "$@") ; wmctrl -a gvim }
export AWS_CREDENTIAL_FILE=$HOME/.aws/aws_credential_file
export INDEED_ENV_DIR=$HOME/env

export PYENV_ROOT="$HOME/.pyenv"
PATH="$HOME/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# for the system pip3 and aws-cli
PATH=$PATH:/home/avishai/.local/bin

export GOPATH=$HOME/go
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export GO111MODULE=on
export CDPATH=/home/avishai/go/src/indeed.com/systools:/home/avishai/go/src/indeed.com/neteng
export GOPROXY=https://nexus.corp.indeed.com/repository/go/,https://modprox-proxy.corp.indeed.com/
export TAGGIT_REGISTRY_URL=https://mods.sandbox.indeed.net
export GOSUMDB=off

alias bell='echo -e "\a" ; notify-send DONE'
alias copy='xclip -selection clipboard'
alias futp='sudo modprobe -r psmouse && sudo modprobe psmouse'
alias ivpn='globalprotect connect -p mobile.vpn.indeed.com'

# Single-brace syntax because this is required in bash, dash, zsh, etc
if [ -e "$HOME/env/etc/indeed_profile" ]; then
    . "$HOME/env/etc/indeed_profile"
fi

# OPTIONAL, but recommended: Add ~/env/bin to your PATH to use the shared shell scripts from delivery/env
if [ -d "$HOME/env/bin" ]; then
    PATH="$HOME/env/bin:$PATH"
fi
if [ -d "$HOME/reps/hobo/bin" ]; then
    PATH="$HOME/reps/hobo/bin:$PATH"
fi

export CDH4_HOME=$HOME/cdh4
export HADOOP_HOME=$CDH4_HOME/hadoop-2.0.0-cdh4.7.1
export HADOOP_LOG_DIR=$HADOOP_HOME/logs
export HADOOP_CONF_DIR=/etc/hadoop/conf
export HADOOP_OPTS="-Djava.security.krb5.conf=/etc/krb5.conf"
export PIG_HOME=$CDH4_HOME/pig-0.11.0-cdh4.7.1
export PIG_CLASSPATH="$HADOOP_CONF_DIR:$HADOOP_HOME/*:$HADOOP_HOME/lib/*"
export HBASE_HOME=$CDH4_HOME/hbase-0.94.15-cdh4.7.1
export HBASE_CONF_DIR=/etc/hbase/conf
PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PIG_HOME/bin:$HBASE_HOME/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=$HOME/.krew/bin:$PATH

export ANT_ARGS="-logger org.apache.tools.ant.listener.AnsiColorLogger"
export NVM_DIR=/home/avishai/.nvm

repos_to_update="~/env:${INDEED_PROJECT_DIR}/javadev"
OLDIFS=$IFS
IFS=":"
for repo in $repos_to_update; do
    if [[ -d ${repo} ]]; then
        ~/env/bin/repo-current-async-check "${repo}"
    fi
done
IFS=$OLDIFS

source <(kubectl completion zsh)

# ignore terminal commands that start with '#'
setopt interactivecomments

# allow clearing the terminal with CTRL+K
clr(){
  printf "\ec"
}
bindkey -s '^k' 'clr^M'


PATH=/home/avishai/.nvm/versions/node/v10.19.0/bin:$PATH

# BEGIN env Setup -- Managed by Ansible DO NOT EDIT.

# Setup INDEED_ENV_DIR earlier.
if [ -z "${INDEED_ENV_DIR}" ]; then
    export INDEED_ENV_DIR="${HOME}/env/"
fi

# Single-brace syntax because this is required in bash and sh alike
if [ -e "${INDEED_ENV_DIR}/etc/indeedrc" ]; then
    . "${INDEED_ENV_DIR}/etc/indeedrc"
fi

# END env Setup -- Managed by Ansible DO NOT EDIT.
