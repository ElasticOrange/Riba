#!/bin/bash

foldername=$(date +%Y-%m-%d_%H-%M-%S)


mongodump -d unique-romania -o /home/mikes/"$foldername"/$(date +%Y-%m-%d_%H-%M-%S).csv

#Backups/ElasticOrange/2014-11-28_12-17-00/db/mysql/db_mysql_2014-11-28_12-19-00.tar.gz

tar -cpz /home/mikes/"$foldername" | split -d -b 240m - /home/mikes/db_mongo_$(date +%Y-%m-%d_%H-%M-%S).tar.gz

mkdir -p  /home/mikes/box.com/Backups/UniqueRomania/"$foldername"/db/

rsync -azvv /home/mikes/db_mongo_* /home/mikes/box.com/Backups/UniqueRomania/"$foldername"/db/mongo/

rm -rf /home/mikes/db_mongo_* 
