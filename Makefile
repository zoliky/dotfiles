DIR := $(shell pwd)

install: nvim minpac symlinks

nvim:
	mkdir -p ~/.config/nvim

minpac:
	mkdir -p $(DIR)/vim/pack/minpac/opt
	cd $(DIR)/vim/pack/minpac/opt && \
		git clone https://github.com/k-takata/minpac.git

symlinks:
	@ln -sfv $(DIR)/init.vim ~/.config/nvim/init.vim
	@ln -sfv $(DIR)/editorconfig ~/.editorconfig
	@ln -sfv $(DIR)/gitconfig ~/.gitconfig
	@ln -sfv $(DIR)/gitignore ~/.gitignore
	@ln -sfv $(DIR)/gvimrc ~/.gvimrc
	@ln -sfv $(DIR)/vimrc ~/.vimrc
	@ln -sfv $(DIR)/vim ~/.vim
	@ln -sfv $(DIR)/zshrc ~/.zshrc
