#!/bin/bash

foldername=$(date +%Y-%m-%d_%H-%M-%S)
mkdir -p  /home/mikes/Desktop/Backups/ElasticOrange/"$foldername"/site/	#archive and split in 240MB parts, create folder timestamp

tar -cpz /usr/share/nginx/unique-romania.studio/ | split -d -b 240m - /home/mikes/Desktop/Backups/ElasticOrange/"$foldername"/site/site_$(date +%Y-%m-%d_%H-%M-%S).tar.gz
