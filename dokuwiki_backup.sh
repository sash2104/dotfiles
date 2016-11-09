#!/bin/sh

DIR=`dirname ${0}`
cd  $DIR ; cd ..

rsync -az --delete /var/www/html/dokuwiki/ backup/dokuwiki.bk/

tar zcf backup/dokuwiki.`date +"%Y%m%d"`.tar.gz backup/dokuwiki.bk

find ${DIR} -type f -name "*.tar.gz" -mtime +60 -exec rm -rf {} \;
