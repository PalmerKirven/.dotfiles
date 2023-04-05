# Set default target
.DEFAULT_GOAL := linux

# Targets and dependencies
linux: cleanup
	sh ./bin/linux.sh


cleanup:
	sh ./bin/cleanup.sh

#Permissions
	chmod +x ./bin/linux.sh
	chmod +x ./bin/cleanup.sh
