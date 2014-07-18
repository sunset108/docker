#!/bin/sh

sudo docker run -d -v /data/mysql:/var/lib/mysql -p 3306:3306 -e MYSQL_PASS="a"  sunset108/mysql1
