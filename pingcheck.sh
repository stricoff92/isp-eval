#!/bin/bash

LOGFILE="/var/log/ispeval-pingcheck.log"

while true; do
    nowTS=$(date)
    ping 1.1.1.1 -c 1 -W 1 &> /dev/null
    if [ $? -ne 0 ]; then
        echo "$nowTS no internet" >> $LOGFILE
        sleep 30
    else
        sleep 2
    fi
done
