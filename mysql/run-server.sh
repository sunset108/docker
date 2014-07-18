#!/bin/sh

sudo docker run -d -p 3306:3306 -v /data/mysql:/var/lib/mysql sunset108/mysql
