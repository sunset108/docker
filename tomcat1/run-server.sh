#!/bin/sh

sudo docker run -d -p 8080:8080 -v /data/tomcat:/home/user/tomcat7/webapps sunset108/tomcat1
