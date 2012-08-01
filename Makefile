all:
	git submodule init
	git submodule update
	cd ~
	ln -s zsh/zshrc ~/.zshrc
	ln -s zsh/zsh.d ~/.zsh.d
