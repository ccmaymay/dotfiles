export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

set -o vi

# export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

export EDITOR=vim

alias vi='vim -p'

export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.pixi/bin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin"

[ -s "/etc/bash_completion.d/git" ] && \. "/etc/bash_completion.d/git"
[ -s "/usr/share/bash-completion/completions/git" ] && \. "/usr/share/bash-completion/completions/git"
[ -s "/usr/lib/git-core/git-sh-prompt" ] && \. "/usr/lib/git-core/git-sh-prompt"
# [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
[ -s "$HOME/bin/git-prompt.sh" ] && \. "$HOME/bin/git-prompt.sh"
PS1='\u@\h \W$(__git_ps1 " (%s)") \$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.antigravity/antigravity/bin:$PATH"

export PATH="$PATH:/opt/homebrew/opt/python@3.14/libexec/bin"
export PATH="$PATH:/opt/R/arm64/gfortran/bin"

if [ -f ~/.bashrc_local ]
then
    source ~/.bashrc_local
fi
