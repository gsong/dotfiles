##################
# Custom Scripts #

export EDITOR=edit
export HGEDITOR=hgeditor

[[ -d ~/.bin ]] && export PATH=~/.bin:$PATH

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && source ~/.localrc

# Keep bash history across terminals and write immediately
# http://linuxcommando.blogspot.com/2007/11/keeping-command-history-across-multiple.html
shopt -s histappend
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# Pager is used by psql
export PAGER=/usr/bin/less

# Specify hardware
export ARCHFLAGS="-arch x86_64"

# Powerline
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
hash pyenv 2>/dev/null && source $HOME/.pyenv/versions/$(pyenv whence powerline | head -n 1)/lib/python*/site-packages/powerline/bindings/bash/powerline.sh

# SSH
/usr/bin/ssh-add -A &> /dev/null
