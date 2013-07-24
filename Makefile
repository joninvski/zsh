all:
	ln -f -s `pwd`/zshrc ~/.zshrc
	git clone "https://github.com/robbyrussell/oh-my-zsh.git"
	ln -s `pwd`/completion.zsh oh-my-zsh/custom/
	ln -s `pwd`/movement.zsh oh-my-zsh/custom/
