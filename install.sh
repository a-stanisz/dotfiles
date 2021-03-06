#!/bin/bash

# DIRS:
LOG_DIR=''$HOME'/env-setup.log'

# Timestamp:
echo $(date) >> $LOG_DIR
echo 'This is the log file echoed from env-setup script ('$0').' >> $LOG_DIR

# Install neofetch, a cli system info tool:
sudo apt-get install neofetch
echo 'Installed: neofetch for cli system info.' >> $LOG_DIR

# Symlink .bash_aliases to the home dir:
ln -sv $HOME/dotfiles/.bash_aliases ~
echo '.bash_aliases symlinked into home dir.' >> $LOG_DIR
