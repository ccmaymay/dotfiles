[ -s "$HOME/.configure_shell.sh" ] && \. "$HOME/.configure_shell.sh"

if [ -f ~/.bashrc_local ]
then
    source ~/.bashrc_local
fi
