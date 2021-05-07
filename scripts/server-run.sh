#!/bin/bash

error () {
	echo "error on line $1"
	rm mcman/.mcman-lock
}

trap "error $LINENO" ERR

source mcman.conf

touch .mcman-lock

cd ..
sleep 1
echo "| Run in the background with ctrl+a, ctrl+d.                           |"
echo "| Scroll with ctrl+a, escape, then arrow keys.                         |"
echo "|  When done scrolling, press q or escape.                             |"
echo "+======================================================================+"
sleep 1
echo "Starting server..."

eval "$SERVER_CMD"

echo "Server stopped."
read -n 1 -s -r -p "Press any key..."

rm mcman/.mcman-lock
