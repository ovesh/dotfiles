PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PS1='\u@\h \t \w\$'

# Single-brace syntax because this is required in bash and sh alike
if [ -e "$HOME/env/etc/indeedrc" ]; then
    . "$HOME/env/etc/indeedrc"
fi

alias bell='echo -e "\a"'
