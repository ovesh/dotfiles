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

# root prompt
[ $UID = 0 ] && export PROMPT=$'%{\e[0;31m%}[%{\e[0m%}%n%{\e[0;31m%}@%{\e[0m%}%M%{\e[0;31m%}:%{\e[0m%}%~%{\e[0;31m%}]%{\e[0m%}%# '
# normal user prompt
[ $UID != 0 ] && export PROMPT=$'%{\e[0;36m%}[%{\e[0m%}%n%{\e[0;36m%}@%{\e[0m%}%M%{\e[0;36m%}:%{\e[0m%}%~%{\e[0;36m%}:%{\e[0m%}%*%{\e[0;36m%}]%{\e[0m%}%# '

alias authp='pushd /Users/ovesh/reps/corp-sso/opt/auth-provider/'
alias grepp='grep -rn --color=always'
alias rmorig='find . -name "*.orig" -exec rm -v {} \;'
alias boop='aplay /usr/share/sounds/speech-dispatcher/test.wav'
alias cb='xclip -selection clipboard'
alias anti='ant -Dresolve_run=true'
alias soft='kill -15'
alias clip='MYSQL_JAR=lib/mysql--mysql-connector-java--mysql-connector-java--jar.jar ~/reps/javadev/bin/runCronjob.sh logrepo.clip.tools.ClipDaemon --props ~/.clip.properties --httpMonitorPort 22222 --log4j ~/log4j-cron.xml'

bindkey '^R' history-incremental-pattern-search-backward
bindkey '^[[Z' reverse-menu-complete

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export EDITOR=vim

export LC_CTYPE=en_US.UTF-8

# add homebrew to path
PATH=/usr/local/bin:$PATH

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export INDEED_PROJECT_DIR=$HOME/reps
export CATALINA7_HOME=$INDEED_PROJECT_DIR/javadev/apache-tomcat-7.0.8
# PATH is already marked as exported
PATH=$INDEED_PROJECT_DIR/javadev/bin:$PATH
export INDEED_CONFIG_DIR=$INDEED_PROJECT_DIR/javadev/myconfig
function gvim () { (/usr/bin/gvim -f "$@" &) }
export AWS_CREDENTIAL_FILE=$HOME/.aws/aws_credential_file
export INDEED_ENV_DIR=$HOME/env
export INDEED_OFFICE=nrtoff

export DISABLE_PYENV=1

# for pyenv on osx
#eval "$(pyenv init -)"

#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export GO111MODULE=on
export GOPROXY=https://modprox-proxy.corp.indeed.com/
export TAGGIT_REGISTRY_URL=https://mods.sandbox.indeed.net/
export GOSUMDB=off

alias bell='echo -e "\a"'

launchctl setenv INDEED_PROJECT_DIR $INDEED_PROJECT_DIR

# Single-brace syntax because this is required in bash, dash, zsh, etc
if [ -e "$HOME/env/etc/indeed_profile" ]; then
    . "$HOME/env/etc/indeed_profile"
fi

# OPTIONAL, but recommended: Add ~/env/bin to your PATH to use the shared shell scripts from delivery/env
if [ -d "$HOME/env/bin" ]; then
    PATH="$HOME/env/bin:$PATH"
fi

export CDH5_HOME=$HOME/cdh5
export HADOOP_HOME=$CDH5_HOME/hadoop-2.6.0-cdh5.11.0
export HADOOP_LOG_DIR=$HADOOP_HOME/logs
export HADOOP_CONF_DIR=/etc/hadoop/conf
export HADOOP_OPTS="-Djava.security.krb5.conf=/etc/krb5.conf"
export PIG_HOME=$CDH5_HOME/pig-0.12.0-cdh5.11.0
export PIG_CLASSPATH="$HADOOP_CONF_DIR:$HADOOP_HOME/*:$HADOOP_HOME/lib/*"
export HBASE_HOME=$CDH5_HOME/hbase-1.2.0-cdh5.11.0
export HBASE_CONF_DIR=/etc/hbase/conf
export CDH_MR2_HOME=$CDH5_HOME/share/hadoop/mapreduce
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PIG_HOME/bin:$HBASE_HOME/bin:$PATH

export ANT_ARGS="-logger org.apache.tools.ant.listener.AnsiColorLogger"

repos_to_update="~/env:${INDEED_PROJECT_DIR}/javadev"
OLDIFS=$IFS
IFS=":"
for repo in $repos_to_update; do
    if [[ -d ${repo} ]]; then
        ~/env/bin/repo-current-async-check "${repo}"
    fi
done
IFS=$OLDIFS
export ETC=/Users/avishai/etc

export PATH=$PATH:/Users/avishai/reps/shell-niceties/bin
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/Users/avishai/bin

export CDPATH=.:${GOPATH}/src/indeed/devops:${GOPATH}/src/indeed/neteng:${GOPATH}/src/indeed/gophers:${GOPATH}/src/indeed.com/systools:${GOPATH}/src/indeed.com/gophers

autoload -U zmv
alias mmv='noglob zmv -W'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
