#!/usr/bin/env bash
#
# spacemacs 
#
#
set -e

echo "Spacemacs"

# check for vim
if test $(which emacs)
then
    mkdir ~/.spacemacs.d
    mkdir ~/.spacemacs.d/layers

    # downloading libs for theme
    wget https://raw.githubusercontent.com/magnars/dash.el/master/dash.el -P ~/.spacemacs.d
    wget https://raw.githubusercontent.com/sebastiansturm/autothemer/master/autothemer.el -P ~/.spacemacs.d

    echo "Creating links"
    # vimrc file
    ln -sfn ~/.dotfiles/configs/spacemacs/spacemacsrc ~/.spacemacs

else
    echo "spacemacs not installed"
fi
