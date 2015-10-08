.PHONY: all git zsh pylint

all: git zsh pylint
git:
	cp gitconfig ~/.gitconfig
zsh:
	cp zshrc ~/.zshrc

# Python
pylint:
	cp pylint.rc ~/.pylint.rc
