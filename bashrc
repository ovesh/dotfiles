PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PS1='\u@\h \t \w\$'

# Single-brace syntax because this is required in bash and sh alike
if [ -e "$HOME/env/etc/indeedrc" ]; then
    . "$HOME/env/etc/indeedrc"
fi

PATH="/Users/avishai/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/Users/avishai/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/avishai/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/avishai/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/avishai/perl5"; export PERL_MM_OPT;

alias bell='echo -e "\a"'
