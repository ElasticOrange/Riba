#!/bin/bash

mount /home/mikes/box.com

foldername=$(date +%Y-%m-%d_%H-%M-%S)

#SOURCE_SITE
tar -cpz /usr/share/nginx/unique-romania.studio/ | split -d -b 240m - /usr/share/nginx/unique-romania.studio/site_$(date +%Y-%m-%d_%H-%M-%S).tar.gz

#DESTINATION_SITE
mkdir -p  /home/mikes/box.com/Backups/UniqueRomania/"$foldername"/site/

#SOURCE_SITE DESTINATION_SITE
rsync -azvv /usr/share/nginx/unique-romania.studio/site_* /home/mikes/box.com/Backups/UniqueRomania/"$foldername"/site/

rm -rf /usr/share/nginx/unique-romania.studio/site_* 

#SOURCE_DB
mongodump -d unique-romania -o /home/mikes/"$foldername"/$(date +%Y-%m-%d_%H-%M-%S).csv

#Backups/UniqueRomania/2014-11-28_12-17-00/db/mysql/db_mysql_2014-11-28_12-19-00.tar.gz

#SOURCE_DB
tar -cpz /home/mikes/"$foldername"/ | split -d -b 240m - /home/mikes/"$foldername"/db_mongo_$(date +%Y-%m-%d_%H-%M-%S).tar.gz

#DESTINATION_DB
mkdir -p  /home/mikes/box.com/Backups/UniqueRomania/"$foldername"/db/mongo/

#SOURCE_DB DESTINATION_DB
rsync -azvv /home/mikes/"$foldername"/db_mongo_* /home/mikes/box.com/Backups/UniqueRomania/"$foldername"/db/mongo/

rm -rf /home/mikes/"$foldername"/db_mongo_* 
