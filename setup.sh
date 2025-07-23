#!/bin/bash

# Try to get zsh version
if ! zsh --version > /dev/null 2>&1; then
  echo "zsh is not installed. Exiting."
  exit 1
fi

echo "zsh is installed."

if ! starship --version > /dev/null 2>&1; then
  echo "starship is not installed. Exiting."
  exit 1
fi

echo "starship is installed."

ln -s ~/.zsh/.zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
