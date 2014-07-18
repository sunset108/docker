#!/bin/bash

TAG="mysql"
CONTAINER_ID=$(docker ps | grep $TAG | awk '{print $1}')
HOSTNAME=$(docker inspect --format='{{.NetworkSettings.IPAddress}}' $CONTAINER_ID)
PORT="3306"
USERNAME="admin"
PASSWORD="a"

DBNAME="db"
TABLENAME="user"

MYSQL_CMD="mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD}"
echo ${MYSQL_CMD}


echo "create database ${DBNAME}"

create_db_sql="create database IF NOT EXISTS ${DBNAME}"
echo ${create_db_sql}  | ${MYSQL_CMD}
if [ $? -ne 0 ]
then
echo "create databases ${DBNAME} failed ..."
exit 1
fi


echo "create table ${TABLENAME}"

create_table_sql="create table ${TABLENAME}(
id int default 0,
name char(6) NOT NULL,
)ENGINE=MyISAM DEFAULT CHARSET=utf8"
echo ${create_table_sql} | ${MYSQL_CMD} ${DBNAME}
if [ $? -ne 0 ]
then
echo "create  table ${DBNAME}.${TABLENAME}  fail ..."
fi

insert_sql="insert into ${TABLENAME} values (\"1\",\"wang\");"
echo ${insert_sql} | ${MYSQL_CMD} ${DBNAME}
if [ $? -ne 0 ]
then
echo "insert fail ..."
fi
