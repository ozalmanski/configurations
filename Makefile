.PHONY: all git zsh pylint

all: git zsh pylint vi

# GIT Configuration
git:
	cp gitconfig ~/.gitconfig

# ZSH configuration
zsh:
	cp zsh/zshrc ~/.zshrc
	cp zsh/prompt ~/.zsh/prompt
	mkdir -p ~/.zsh/aliases
	cp zsh/aliases/* ~/.zsh/aliases/
	cp zsh/git_prompt ~/.zsh

# VIM configuration
vi:
	cp vim/vimrc ~/.vimrc
	mkdir -p ~/.vim/autoload
	cp vim/autoload/* ~/.vim/autoload/

# Python
pylint:
	cp pylint.rc ~/.pylint.rc

# Configuration for production server
prod: zsh git vi
	mkdir -p ~/.zsh/bin
	cp zsh/bin/monsoon-env.rb ~/.zsh/bin/
