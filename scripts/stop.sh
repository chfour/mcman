#!/bin/bash
echo "Stopping server..."

source mcman.conf

if [ ! -f .mcman-lock ]; then
	echo "server not running!"
	exit
fi

./scripts/send.sh "say $SERVER_SHUTDOWN_MESSAGE"
sleep "$SERVER_SHUTDOWN_DELAY"
./scripts/send.sh "stop"
./scripts/reattach.sh
