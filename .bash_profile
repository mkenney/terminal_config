#
# .bash_profile
#

#
# Load my VIM stuffs
#
if [ -f ~/.bash_vim ]; then
	. ~/.bash_vim
fi

#
# Load my gerrit stuffs
#
if [ -f ~/.bash_gerrit ]; then
	. ~/.bash_gerrit
fi

#
# Load my cvs stuffs
#
if [ -f ~/.bash_cvs ]; then
	. ~/.bash_cvs
fi

#
# Load my perl stuffs
#
if [ -f ~/.bash_perl ]; then
	. ~/.bash_perl
fi

#
# Load my java stuffs
#
if [ -f ~/.bash_java ]; then
	. ~/.bash_java
fi

#
# Load my aliases
#
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

#
# Load my screen aliases
#
if [ -f ~/.bash_screen ]; then
	. ~/.bash_screen
fi

#
# SSH Tunnel aliases
#
if [ -f ~/.bash_tunnels ]; then
	. ~/.bash_tunnels
fi

#
# Load functions
#
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi

#
# Load my env
#
if [ -f ~/.bash_env ]; then
	. ~/.bash_env
fi

#
# Load my prompt
#
if [ -f ~/.bash_prompt ]; then
	. ~/.bash_prompt
fi

echo "

find / -name "*base*" -user your -print | xargs 'chown us'

"



