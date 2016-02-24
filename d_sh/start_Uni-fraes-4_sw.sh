#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
source util/init.sh
ssh -i $KEYFILE -Y -oBatchMode=yes -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null machinekit@192.168.7.2 "source /etc/profile; cd ~/machinekit-configs/ && ./run.py -nm Uni-fraes-4_sw.ini"