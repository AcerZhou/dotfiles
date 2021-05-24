#!/bin/sh

# [Vim] Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# [NodeJS] Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
# Install latest NodeJS
nvm install --lts
