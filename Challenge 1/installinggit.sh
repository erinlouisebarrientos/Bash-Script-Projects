#!/bin/bash
echo “Script to install git software”
echo “Installation started”
if [ “$(uname)” == “Linux” ];
then
	echo “This is Linux box, installing git…”
	sudo apt install git
	git --version
else
	echo “Not installing…”
fi