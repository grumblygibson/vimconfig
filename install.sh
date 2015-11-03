#installs the vim settings files into the local current user directory.

abort() {
	echo "Aborted."
	exit
}

copy() {
	echo "Ensuring Vundle is up to date..."
	git submodule init
	git submodule update
	echo "Installing..."
	rm -rf ~/.vim
	cp -r vim ~/.vim
	rm -rf ~/.vimrc
	cp -r vimrc ~/.vimrc
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
