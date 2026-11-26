#
# ~/.profile
#

# Security Settings
umask 077
export HISTCONTROL=ignoreboth:erasedups

# UWSM Check
if uwsm check may-start && uwsm select; then
	exec uwsm start default
fi
