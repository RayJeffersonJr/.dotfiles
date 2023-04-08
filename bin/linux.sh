# Script for setting up using the .vimrc file in Linux

# Shebang for Bash
#!/bin/bash

# Variables declared
OSSYSTEM=$(uname)

##########
# If statement to check is operating system is Linux. If operating system is Linux, the script continues.
# If operating system is not Linux, an error message is dumped to the linuxsetup.log file and 
# the exit command is ran and script stops.
#########

if [[ "$OSSYSTEM" != Linux ]];	then
	echo "Linux not found. Now exiting" >> ~/linuxsetup.log
	exit
else
	echo "Linux is installed...continuing" >> ~/linuxsetup.log
	exit
	
fi

if [[ -f "~/.TRASH" ]];

then
        echo ".TRASH directory found"

else
        mkdir -p  ~/.TRASH
fi


# If statement to check if .vimrc file exists in the Home directory. If it does, then
# its name is changed to .bup_vimrc and a dump message reporting the name change goes to linuxsetup.log.
if [[ -f "$HOME/.vimrc" ]]; 

then
	echo "Found existing .vimrc file. Now starting renaming change..."
	mkdir $HOME/.bup_vimrc
	$(mv $.vimrc $bup_vimrc)
fi

# Redirect/overwrite contents of the etc/vimrc file to a new file etc/.vimrc in the Home directory.
~/.dotfiles/etc/vimrc > ~/.dotfiles/etc/.vimrc

# Checking to see if ~/.TRASH directory exists. If directory doesn't exists, directory
# is created.
if [[ -f "~/.TRASH" ]]; 

then
	echo ".TRASH directory found"

else
	mkdir -p  ~/.TRASH
fi

# Checking to see if ~/.vimrc exists. If it does rename to ~/.bup_vimrc and dumps
# a message to linuxsetup.log showing the file name change.

if [[ -f "~/.vimrc" ]];

then
	mkdir $HOME/.vimrc_backup
	cp ~/.vimrc ~/.vimrc_backup/.bup_vimrc
	.bup_vimrc > ~/linuxsetup.log
fi

# Redirecting/overwriting contents of ./dotfiles/etc/vimrc file to ~/.vimrc file
bash ~/.dotfiles/etc/.vimrc > ~/.vimrc


# Runs source ~/.dotfiles/etc/bashrc_custom script in linux.sh script
source ~/.dotfiles/etc/bashrc_custom









