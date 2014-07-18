#!/bin/sh

sudo docker run -d -v /data/mysql:/var/lib/mysql sunset108/mysql1 /bin/bash -c "/usr/bin/mysql_install_db"
