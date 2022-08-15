#!/usr/bin/env bash

# You need to source nvm before you can use it. 
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc

# Verify if nvm is installed
command -v nvm

# Install lts version of node with nvm
nvm install --lts

# Use lts version of node
nvm use --lts

# Check Node version
node -v

# https://www.theodinproject.com/lessons/foundations-installing-node-js
# Via Git Install
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
