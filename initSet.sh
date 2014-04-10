#!/bin/sh
mkdir -p app/config
mkdir -p app/tmp/cache
mkdir -p app/tmp/cache/models
mkdir -p app/tmp/cache/persistent
mkdir -p app/tmp/logs
mkdir -p app/cal_tmp
setfacl -R -m u:www-data:rwx app/tmp
setfacl -R -m u:${USER}:rwx app/tmp
setfacl -R -d -m u:www-data:rwx app/tmp
setfacl -R -d -m u:${USER}:rwx app/tmp
setfacl -R -d -m u:www-data:rwx app/cal_tmp
setfacl -R -d -m u:${USER}:rwx app/cal_tmp

