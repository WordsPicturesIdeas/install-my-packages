#!/bin/sh -x

#Update package listings
sudo apt-get update

# Install fail2ban
sudo apt-get install fail2ban -y

# Install zsh
sudo apt-get install zsh -y

# Install htop
sudo apt-get install htop -y

# Install Mosh
sudo apt-get install mosh -y

# Install Multitail
sudo apt-get install multitail -y

# Install Remote Desktop
sudo apt-get install xrdp -y

# Install wpagui, Rasberry Pi 3, etc.
# sudo apt-get install wpagui

# Install automatic upgrades
# Configuration available in: /etc/apt/apt.conf.d/50unattended-upgrades
sudo apt-get install unattended-upgrades bsd-mailx -y
#Create cron job for the package.
sudo cp resources/02periodic /etc/apt/apt.conf.d/02periodic

echo "Done."
