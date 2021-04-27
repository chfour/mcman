#!/bin/bash
if [ -f .mcman-lock ]; then
	echo "running"
else
	echo "stopped"
fi
