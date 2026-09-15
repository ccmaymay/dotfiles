[ -s "$HOME/.configure_shell.sh" ] && \. "$HOME/.configure_shell.sh"

export EDITOR=vim

set -o vi

alias vi='vim -p'

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export CLICOLOR=1

if [ -f ~/.bashrc_local ]
then
    source ~/.bashrc_local
fi
