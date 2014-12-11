#!/bin/bash



CONFIG_FILE=/usr/bin/riba/Riba/backup.conf

if [[ -f $CONFIG_FILE ]]; then
        . $CONFIG_FILE
fi

tar -cpz $SOURCE_SITE | split -d -b 230m - /tmp/site_$(date +%Y-%m-%d_%H).tar.gz
foldername=$(date +%Y-%m-%d_%H)
cadaver -t https://dav.box.com/dav <<EOF
mkdir /dav/Backups/UniqueRomania/$foldername/
mkdir /dav/Backups/UniqueRomania/$foldername/site/
cd /dav/Backups/UniqueRomania/$foldername/site/
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz00
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz01
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz02
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz03
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz04
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz05
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz06
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz07
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz08
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz09
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz10
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz11
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz12
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz13
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz14
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz15
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz16
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz17
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz18
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz19
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz20
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz21
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz22
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz23
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz24
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz25
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz26
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz27
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz28
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz29
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz30
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz31
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz32
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz33
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz34
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz35
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz36
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz37
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz38
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz39
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz40
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz41
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz42
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz43
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz44
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz45
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz46
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz47
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz48
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz49
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz50
put /tmp/site_$(date +%Y-%m-%d_%H).tar.gz51
quit
EOF

mkdir -p /tmp/db/
mongodump -d $DB_NAME -o /tmp/db/$(date +%Y-%m-%d_%H).csv

tar -cpz /tmp/db/ | split -d -b 230m - /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz


cadaver -t https://dav.box.com/dav <<EOF
mkdir /dav/Backups/UniqueRomania/$foldername/db/
mkdir /dav/Backups/UniqueRomania/$foldername/db/mongo/
cd /dav/Backups/UniqueRomania/$foldername/db/mongo/
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz00
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz01
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz02
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz03
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz04
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz05
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz06
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz07
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz08
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz09
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz10
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz11
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz12
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz13
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz14
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz15
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz16
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz17
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz18
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz19
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz20
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz21
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz22
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz23
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz24
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz25
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz26
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz27
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz28
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz29
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz30
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz31
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz32
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz33
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz34
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz35
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz36
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz37
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz38
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz39
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz40
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz41
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz42
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz43
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz44
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz45
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz46
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz47
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz48
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz49
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz50
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz51
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz52
put /tmp/db_mongo_$(date +%Y-%m-%d_%H).tar.gz53
quit
EOF

rm -rf /tmp/site_* /tmp/db_mongo_* /tmp/db


