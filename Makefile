.PHONY: all git zsh pylint

all: git zsh pylint vi
git:
	cp gitconfig ~/.gitconfig
zsh:
	cp zshrc ~/.zshrc
vi:
	cp vim/vimrc ~/.vimrc
	mkdir -p ~/.vim/autoload
	cp vim/autoload/* ~/.vim/autoload/

# Python
pylint:
	cp pylint.rc ~/.pylint.rc
