# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/.histfile
HISTSIZE=100
SAVEHIST=1000
setopt extendedglob nomatch
unsetopt autocd beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Custom
export STARSHIP_CONFIG=~/.zsh/starship.toml
export SHELL=/bin/zsh
export PATH="/home/colin/Apps/carbon/bin:$HOME/opt/cross/bin:$PATH"
export LIBVIRT_DEFAULT_URI="qemu://system"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"
