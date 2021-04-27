#!/bin/bash
if [ -z "$1" ]; then
	echo "usage: $0 TEXT"
	echo " TEXT: command to send to server"
	exit
fi
if [ ! -f .mcman-lock ]; then
	echo "server not running"
	exit
fi

source mcman.conf

screen -S "$SCREEN_NAME" -p 0 -X stuff "$1^M"
