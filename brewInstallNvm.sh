!#/bin/bash
brew update
brew install nvm
mkdir ~/.nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
