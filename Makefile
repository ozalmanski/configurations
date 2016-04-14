.PHONY: all git zsh pylint

all: git zsh pylint vi
git:
	cp gitconfig ~/.gitconfig
zsh:
	cp zsh/zshrc ~/.zshrc
	cp zsh/prompt ~/.zsh/prompt
	mkdir -p ~/.zsh/aliases
	cp zsh/aliases/* ~/.zsh/aliases/
	mkdir -p ~/.zsh/bin
	cp zsh/bin/* ~/.zsh/bin/
	cp zsh/git_prompt ~/.zsh
vi:
	cp vim/vimrc ~/.vimrc
	mkdir -p ~/.vim/autoload
	cp vim/autoload/* ~/.vim/autoload/

# Python
pylint:
	cp pylint.rc ~/.pylint.rc
