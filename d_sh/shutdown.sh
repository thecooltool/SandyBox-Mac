#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
source util/init.sh
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "The Sandy-Box will now shutdown, please close all open files."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
read -p "Press [Enter] to continue or [Ctrl+C] to abort..."
echo "Syncing file system buffers..."
sync
cd $TMPDIR
ssh -i $KEYFILE -oBatchMode=yes -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null machinekit@192.168.7.2 sudo poweroff > /dev/null
echo "Powering off the Sandy-Box..."
echo "Please wait until the blue lights go out before disconnecting the power supply."
read -p "Press any key to exit..."