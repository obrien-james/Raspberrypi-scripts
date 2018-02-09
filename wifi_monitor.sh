#!/bin/bash
######################################################################
# Make executable chmod +x FILENAME                                  #
# Add to Crontab crontab -e                                          #
# Add */5 * * * * FILEPATH/FILENAME                                  #
# Add /5 = 5 minutes                                                 #
######################################################################
# The IP for the server you wish to ping (8.8.8.8 is a public Google DNS server)
SERVER=8.8.8.8
echo "Checking WiFi connection ..."

# Only send two pings, sending output to /dev/null
ping -c2 ${SERVER} > /dev/null

# If the return code from ping ($?) is not 0 (meaning there was an error)
if [ $? != 0 ]
then
    echo "WiFi not connected ... Restarting connection ..."
    # Restart the wireless interface
    ifdown --force wlan0
    sleep 3
    ifup wlan0
else
   echo "WiFi connected"
fi
