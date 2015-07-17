# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/asadones/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Prompt configuration
autoload -U colors && colors
PROMPT="%{$fg[green]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}% # "
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"