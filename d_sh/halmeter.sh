#!/usr/bin/env bash
if [ ! "$BASH_VERSION" ] ; then
    echo "Warning: this script should be executed with bash"
    exec /bin/bash "$0"
fi
cd "$( dirname "${BASH_SOURCE[0]}" )"
source util/init.sh
ssh -i $KEYFILE -Y -oBatchMode=yes -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null machinekit@192.168.7.2 "source /etc/profile; halmeter"
