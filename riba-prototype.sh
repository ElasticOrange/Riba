#!/bin/bash

#archive and split in 240MB parts
tar -cpz /usr/share/nginx/unique-romania.studio/ | split -d -b 240m - /home/mikes/Desktop/site_$(date "+%Y-%d-%b_%H-%M-%S").tar.gz

$(date "+%Y-%d-%b_%H-%M-%S")
$ DATE = 'date +%y-%m-%d_%H-%M-%S'
$ FILE=site.tar.gz
$ FILE=${FILE%.*}_'date +%y-%m-%d_%H-%M-%S'.${FILE#*.}
$ echo $FILE


mkdir -p to create missing directory
