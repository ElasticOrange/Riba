#!/bin/bash

sudo mount /home/mikes/box.com

foldername=$(date +%Y-%m-%d_%H-%M-%S)

sudo tar -cpz /usr/share/nginx/unique-romania.studio/ | split -d -b 240m - /usr/share/nginx/site_$(date +%Y-%m-%d_%H-%M-%S).tar.gz

sudo mkdir -p  /home/mikes/box.com/Backups/UniqueRomania/"$foldername"/site/

rsync -azvv /usr/share/nginx/site_* /home/mikes/box.com/Backups/UniqueRomania/"$foldername"/site/

sudo rm -rf /usr/share/nginx/site_* 

#la mine nu merg comenzile fara sudo
#pe server ne logam de obicei cu root deci sudo nu va mai fi necesar

mongodump -d unique-romania -o /home/mikes/"$foldername"/$(date +%Y-%m-%d_%H-%M-%S).csv

#Backups/UniqueRomania/2014-11-28_12-17-00/db/mysql/db_mysql_2014-11-28_12-19-00.tar.gz

tar -cpz /home/mikes/"$foldername" | split -d -b 240m - /home/mikes/db_mongo_$(date +%Y-%m-%d_%H-%M-%S).tar.gz

mkdir -p  /home/mikes/box.com/Backups/UniqueRomania/"$foldername"/db/

rsync -azvv /home/mikes/db_mongo_* /home/mikes/box.com/Backups/UniqueRomania/"$foldername"/db/mongo/

rm -rf /home/mikes/db_mongo_* 
