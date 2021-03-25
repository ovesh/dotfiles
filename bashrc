PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PS1='\u@\h \t \w\$'

alias bell='echo -e "\a"'

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
