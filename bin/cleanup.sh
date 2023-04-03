# Cleanup.sh to reverse all of the work down when the linux.sh script is ran

# Shebang for Bash
#!/bin/bash

# Command to remove .vimrc file from Home directory
rm -rf ~/.vimrc

# Removing "source ~/.dotfiles/bashrc_custom" in .bashrc file in Home directory
rm source ~/.dotfiles/bashrc_custom | sed 's//g'

# Remove .TRASH directory in Home directory
rm -rf ~/TRASH



