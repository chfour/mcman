#!/bin/bash

source mcman.conf

echo "starting..."
screen -d -S "$SCREEN_NAME" -m ./scripts/server-run.sh
echo " screen session running"
echo " reattach to it with:"
echo "screen -r $SCREEN_NAME"
echo " or:"
echo "./manager screen"
