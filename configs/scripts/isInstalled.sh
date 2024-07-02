#!/bin/bash
if ! command -v ${1} &>/dev/null; then
	echo "${1} could not be found"
	exit 1
else
	echo "${1} is installed"
	exit 0
fi
