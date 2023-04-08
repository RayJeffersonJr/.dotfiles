# Cleanup.sh to reverse all of the work down when the linux.sh script is ran

# Shebang for Bash
#!/bin/bash

# Command to remove .vimrc file from Home directory
rm -f ~/.vimrc

# Removing "source ~/.dotfiles/etc/bashrc_custom" in .bashrc file in Home directory
sed -i 's/source \~\/\.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc

# Remove .TRASH directory in Home directory
rm -rf ~/.TRASH



