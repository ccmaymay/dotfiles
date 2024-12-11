set -o vi
export LANG=en_US.UTF-8
export EDITOR=vim
alias vi='vim -p'

export LIBRARY_PATH="$HOME/lib:$LIBRARY_PATH"
export LIBRARY_PATH="$HOME/lib64:$LIBRARY_PATH"
export LD_LIBRARY_PATH="$HOME/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$HOME/lib64:$LD_LIBRARY_PATH"
export C_INCLUDE_PATH="$HOME/include:$C_INCLUDE_PATH"
export CPLUS_INCLUDE_PATH="$HOME/include:$CPLUS_INCLUDE_PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export MANPATH="$HOME/man:$HOME/share/man:$MANPATH"
