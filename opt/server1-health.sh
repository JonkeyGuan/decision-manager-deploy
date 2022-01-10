#!/bin/bash

MY_DIR="$(cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)"
source ${MY_DIR}/server1-common.sh

count=`ps -ef |grep java |grep Djboss.node.name=${NODE_NAME} | grep -v grep | wc -l`
if [ ${count} -eq 0 ]; then
    exit 1;
fi

exit 0


