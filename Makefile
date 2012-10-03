all:
	cd ~
	ln -f -s zsh/zshrc ~/.zshrc
	ln -f -s zsh/zsh.d ~/.zsh.d
	#Usefull for machines with a previous zsh
	echo "RUN THE FOLLOWING COMMAND ON MACHINES WITH PREVIOUS ZSH"
	echo "autoload -U compinit zrecompile"
