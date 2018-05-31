#!/bin/bash

# cleanup recycle dir:
# delete all files with last access time
# older than a specific number of days and
# remove all empty subdirs afterwards.
#
# make sure you set recycle:touch = yes
# in your smb.conf.

# set vars
# Change recycle_dir to directory where recycle bin is kept. 
recycle_dir='/mystorage/recycle/your_recycle_dir_name'
lastaccess_maxdays=30

# execute commands
find $recycle_dir -atime +$lastaccess_maxdays -type f -delete
find $recycle_dir -type d ! -path $recycle_dir -empty -delete
