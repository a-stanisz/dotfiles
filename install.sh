#!/bin/bash

# Timestamp
echo date >> ~/env-setup.log

# Install neofetch, a cli system info tool:
sudo apt-get install neofetch

# Add some custom aliases
touch $HOME/.bash_aliases
echo "alias os='neofetch'" >> $HOME/.bash_aliases
echo "alias c='clear'" >> $HOME/.bash_aliases
echo "alias rld='source ~/.bashrc'" >> $HOME/.bash_aliases
echo "alias e='exit'" >> $HOME/.bash_aliases
echo "alias dev='cd ~/workspace; pwd; ls -a'" >> $HOME/.bash_aliases
echo "alias gs='git status'" >> $HOME/.bash_aliases
echo "alias python='python3'" >> $HOME/.bash_aliases
echo "alias ptn='python'" >> $HOME/.bash_aliases

# Summary
me=`basename "$0"`
echo 'This is the log file echoed from env-setup script ('$0').' >> ~/env-setup.log
echo 'Custom aliases added into .bash_aliases file.' >> ~/env-setup.log
echo 'Installed: neofetch for cli system info.' >> ~/env-setup.log
