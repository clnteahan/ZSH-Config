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

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "starship is installed."

echo "Script dir = $SCRIPT_DIR"

ln -s $SCRIPT_DIR/.zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions $SCRIPT_DIR/zsh-autosuggestions
