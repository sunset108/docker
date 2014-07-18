#!/bin/bash
TAG="mysql"
CONTAINER_NAME=$(docker ps | grep $TAG | awk '{print $NF}')
sudo docker run -d -p 8080:8080 -v /data/tomcat:/tomcat/webapps/ROOT -e TOMCAT_PASS="a" --link=${CONTAINER_NAME}:mysql sunset108/tomcat
