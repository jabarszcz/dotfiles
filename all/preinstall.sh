#!/bin/bash

cd "${BASH_SOURCE%/*}" || exit

# .bashrc and aliases
cp ./.mybashrc ~/.mybashrc
grep "source .mybashrc" ~/.bashrc >& /dev/null || echo "source .mybashrc" >> ~/.bashrc

# some executables
mkdir -p ~/bin
cp ./emacs-nw ~/bin/emacs-nw
