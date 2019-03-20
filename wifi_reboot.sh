#!/bin/bash
######################################################################
# Make executable chmod +x FILENAME                                  #
# Add to Crontab crontab -e                                          #
# Add */5 * * * * FILEPATH/FILENAME                                  #
# Add /5 = 5 minutes                                                 #
# Wifi Checker -- Can change /dev/null to /var/log/wifi_rebooter.log if want to output
# */1 * * * * /usr/local/bin/wifi_reboot.sh 2>&1 | /usr/local/bin/timestamp.sh >> /dev/null
######################################################################
# The IP for the server you wish to ping (8.8.8.8 is a public Google DNS server)
SERVER=8.8.8.8

# Only send two pings, sending output to /dev/null
ping -c2 ${SERVER} > /dev/null

# If the return code from ping ($?) is not 0 (meaning there was an error)
if [ $? != 0 ]
then
    echo "Not connected ... restart wifi"
    # Restart the wireless interface
    /sbin/ifconfig wlan0 down
    /sbin/ifconfig wlan0 up
else
    echo "Conected to internet!"
fi

