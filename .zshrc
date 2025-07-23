# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/.histfile
HISTSIZE=100
SAVEHIST=1000
setopt extendedglob nomatch
unsetopt autocd beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/colin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Custom
export STARSHIP_CONFIG=~/.zsh/starship.toml
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"
