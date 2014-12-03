#!/bin/bash

foldername=$(date +%Y-%m-%d_%H-%M-%S)

CONFIG_FILE=/home/mikes/Desktop/Riba/backup.conf

if [[ -f $CONFIG_FILE ]]; then
        . $CONFIG_FILE
fi

tar -cpz $SOURCE_SITE | split -d -b 230m - $SOURCE_SITE/site_$(date +%Y-%m-%d_%H-%M-%S).tar.gz

mkdir -p $DESTINATION_SITE

rsync -azvv --progress $SOURCE_SITE/site_* $DESTINATION_SITE

rm -rf $SOURCE_SITE/site_* 

mongodump -d $DB_NAME -o $SOURCE_DB/$(date +%Y-%m-%d_%H-%M-%S).csv

tar -cpz $SOURCE_DB | split -d -b 240m - $SOURCE_DB/db_mongo_$(date +%Y-%m-%d_%H-%M-%S).tar.gz

mkdir -p  $DESTINATION_DB

rsync -azvv --progress $SOURCE_DB/db_mongo_* $DESTINATION_DB

rm -rf $SOURCE_DB/db_mongo_* 

