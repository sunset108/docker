#!/bin/bash
PASS=${TOMCAT_PASS:=1}
_word=$( [ ${TOMCAT_PASS} ] && echo "preset" || echo "random" )
echo ${TOMCAT_PASS}
echo ${PASS}
echo ${_word}
