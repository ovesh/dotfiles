PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PS1='\u@\h \t \w\$'

# Single-brace syntax because this is required in bash and sh alike
if [ -e "$HOME/env/etc/indeedrc" ]; then
    . "$HOME/env/etc/indeedrc"
fi

alias bell='echo -e "\a"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# BEGIN env Setup -- Managed by Ansible DO NOT EDIT.

# Single-brace syntax because this is required in bash and sh alike
if [ -e "$HOME/env/etc/indeedrc" ]; then
    . "$HOME/env/etc/indeedrc"
fi

# END env Setup -- Managed by Ansible DO NOT EDIT.
