#!/bin/bash
sudo docker run -d -p 8080:8080 -v /data/tomcat:/tomcat/webapps/ROOT -e TOMCAT_PASS="a" sunset108/tomcat
