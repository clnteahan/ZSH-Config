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
export FZF_DEFAULT_OPTS="--exact"
source <(fzf --zsh) # Fuzzyfind replaces defaults 
export STARSHIP_CONFIG=~/.zsh/starship.toml
export SHELL=/bin/zsh
export EDITOR=nvim
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
if [ -f  ~/.zsh/custom.env ]; then
  source ~/.zsh/custom.env
else
  echo "Warning: 'custom.env' not found"
fi

eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
