#installs the vim settings files into the local current user directory.

abort() {
	echo "Aborted."
	exit
}

copy() {
	echo "Installing..."
	rm -rf ~/.vim
	cp -r vim ~/.vim
	rm -rf ~/.vimrc
	cp -r vimrc ~/.vimrc
	echo "Cloning vundle..."
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle.vim
	echo "Initializing Plugins..."
	#git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
	#cd ~/.vim/bundle/YouCompleteMe
	#git submodule update --init --recursive
	#./install.sh --clang-completer
	vim +PluginInstall +qall
	echo "Finished."
	exit
}

echo
echo "Writing git vim config to $HOME"
echo
read -p "Continue with write? (Y/n): "
echo "you typed '$REPLY'"
if [ -z $REPLY ]
then
	copy
else
	REPLY=$(echo $REPLY | tr '[:lower:]' '[:upper:]')
	if [ $REPLY == "Y" ]
	then
		copy
	else
		abort
	fi
fi
