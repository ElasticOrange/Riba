#!/bin/bash

foldername=$(date +%Y-%m-%d_%H-%M-%S)
mkdir -p  /home/mikes/Desktop/logs/"$foldername"
touch /home/mikes/Desktop/logs/"$foldername"/test$(date +%Y-%m-%d_%H-%M-%S).tar.gz
