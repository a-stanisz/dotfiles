#!/bin/bash

# DIRS:
ALIASES_DIR=''$HOME'/.bash_aliases'
LOG_DIR=''$HOME'/env-setup.log'

# Timestamp:
echo $(date) >> $LOG_DIR

# Install neofetch, a cli system info tool:
sudo apt-get install neofetch

# Symlink .bash_aliases to the home dir:
ln -sv ./.bash_aliases ~

# Copy .bash_aliases file:
# cp ./.bash_aliases $ALIASES_DIR
# echo "alias os='neofetch'" >> $ALIASES_DIR
# echo "alias c='clear'" >> $ALIASES_DIR
# echo "alias rld='source ~/.bashrc'" >> $ALIASES_DIR
# echo "alias e='exit'" >> $ALIASES_DIR
# echo "alias dev='cd ~/workspace; pwd; ls -a'" >> $ALIASES_DIR
# echo "alias gs='git status'" >> $ALIASES_DIR
# echo "alias python='python3'" >> $ALIASES_DIR
# echo "alias ptn='python'" >> $ALIASES_DIR

# Summary:
echo 'This is the log file echoed from env-setup script ('$0').' >> $LOG_DIR
echo 'Custom aliases added into .bash_aliases file.' >> $LOG_DIR
echo 'Installed: neofetch for cli system info.' >> $LOG_DIR
