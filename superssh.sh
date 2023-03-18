#!/bin/bash

# Check if SSH is already installed

if [ ! -x "$(command -v ssh)" ]; then

  echo "Installing SSH..."

  sudo apt-get update

  sudo apt-get install openssh-server

fi

# Configure SSH

sudo systemctl start ssh

sudo systemctl enable ssh

echo "SSH has been successfully set up!"

