.PHONY: all git zsh

all: git zsh
git:
	cp gitconfig ~/.gitconfig
zsh:
	cp zshrc ~/.zshrc

