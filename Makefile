# tab indenting of spaces on each line
:set noexpandtab

# Checking Makefile targets
# all: clean linux

# Running clean dependency that contains the cleanup.sh script. The linux.sh script runs after 
# clean dependency.
linux:	clean
	./bin/linux.sh

# clean target that contains the cleanup.sh script.
clean:
	./bin/cleanup.sh



