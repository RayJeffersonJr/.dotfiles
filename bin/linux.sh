# Script for setting up using the .vimrc file in Linux

# Shebang for Bash
#!/bin/bash


# Read comand to for operating system name Linux
# read -p Linux


##########
# If statement to check is operating system is Linux. If operating system is Linux, the script continues.
# If operating system is not Linux, an error message is dumped to the linuxsetup.log file and 
# the exit command is ran and script stops.
#########


if [$UNAME == Linux ];
then
	cat >> ./linuxsetup.log

else
	cat >> ./linuxsetp.log

fi


# Create TRASH directory with -p option in Home directory. If directory is present, a new directory
# won't be created.
mkdir -p ~/TRASH



# If statement to check if .vimrc file exists in the Home directory. If it does, then
# its name is changed to .bup_vimrc and a dump message reporting the name change goes to linuxsetup.log.
if [ -f $.vimrc ]; 

then
	$(mv $.vimrc $bup_vimrc)
fi


# Redirect/overwrite contents of the etc/vimrc file to a new file etc/.vimrc in the Home directory.
etc/vimrc > etc/.vimrc

# Runs source ~/.dotfiles/etc/bashrc_custom script in linux.sh script
source ~/.dotfiles/etc/bashrc_custom








