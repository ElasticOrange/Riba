#!/bin/bash

sudo mount /home/mikes/box.com

foldername=$(date +%Y-%m-%d_%H-%M-%S)

sudo tar -cpz /usr/share/nginx/unique-romania.studio/ | split -d -b 240m - /usr/share/nginx/site_$(date +%Y-%m-%d_%H-%M-%S).tar.gz

sudo mkdir -p  /home/mikes/box.com/Backups/ElasticOrange/"$foldername"/site/

rsync -azvv /usr/share/nginx/site_* /home/mikes/box.com/Backups/ElasticOrange/"$foldername"/site/

sudo rm -rf /usr/share/nginx/site_* 

#la mine nu merg comenzile fara sudo
#pe server ne logam de obicei cu root deci sudo nu va mai fi necesar
