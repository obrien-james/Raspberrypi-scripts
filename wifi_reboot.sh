#!/bin/bash
######################################################################
#                                                                    #
# Make executable chmod +x FILENAME                                  #
#                                                                    #
######################################################################
echo "Restarting connection ..."
# Restart the wireless interface
ifdown --force wlan0
sleep 3
ifup wlan0
