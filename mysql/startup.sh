#/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then

    mysql_install_db

    mysqld &
    sleep 10s

    echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY 'a' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

    killall mysqld
    sleep 10s
fi

mysqld
