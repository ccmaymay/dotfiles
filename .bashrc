[ -s "$HOME/.configure_shell.sh" ] && \. "$HOME/.configure_shell.sh"

if [ -f /opt/homebrew/bin/brew ]
then
    eval "$(/opt/homebrew/bin/brew shellenv bash)"
fi

if [ -f ~/.bashrc_local ]
then
    source ~/.bashrc_local
fi
