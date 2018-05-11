#!/bin/bash

ps -ae | grep geth
if [ "$?" -ne "0" ]; then
	geth  --syncmode "light"  &
	sleep 10;
fi
mist --light-node
