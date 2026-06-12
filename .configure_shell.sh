#!/bin/bash

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export LANG=en_US.UTF-8

export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.pixi/bin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.antigravity/antigravity/bin:$PATH"

export PATH="$PATH:/opt/homebrew/opt/python@3.13/libexec/bin"
export PATH="$PATH:/opt/R/arm64/gfortran/bin"

if [ -f /opt/homebrew/bin/brew ]
then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
