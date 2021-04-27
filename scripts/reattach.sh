#!/bin/bash
if [ ! -f .mcman-lock ]; then
	echo "server not running!"
	exit
fi
source mcman.conf
screen -r "$SCREEN_NAME"
