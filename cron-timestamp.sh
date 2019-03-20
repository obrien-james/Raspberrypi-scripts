#!/bin/bash

#Used to write Cron output to logfile with timestamps
#Edit crontab -e with following format

#/path/to/my/command.sh 2>&1 | /path/to/timestap.sh >> /var/log/cron/my_log.log

while read x; do
    echo -n `date +%d/%m/%Y\ %H:%M:%S`;
    echo -n " ";
    echo $x;
done
