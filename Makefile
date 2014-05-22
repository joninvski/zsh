all:
	ln -f -s `pwd`/zshrc ~/.zshrc
	ln -f -s `pwd` ~/zsh
	- git clone "https://github.com/robbyrussell/oh-my-zsh.git"
	ln -f -s `pwd`/completion.zsh oh-my-zsh/custom/
	ln -f -s `pwd`/movement.zsh oh-my-zsh/custom/
	ln -f -s `pwd`/my_alias.zsh oh-my-zsh/custom/
