#!/bin/bash

set -e

DOTFILES_SRC="$(dirname $0)"
DOTFILES_DST="$HOME"

echo "Will copy dotfiles from $DOTFILES_SRC to $DOTFILES_DST"
echo "Proceed? (y/n)"
echo -n "> "

read answer

if [[ "${answer,}" == y ]]
then
        rm -rf "$DOTFILES_DST/.ipython"
        cp -rv "$DOTFILES_SRC"/.[^.]* "$DOTFILES_SRC"/* "$DOTFILES_DST"/
        echo "Done."
else
        echo "Aborting." >&2
        exit 1
fi
