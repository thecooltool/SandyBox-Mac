#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
source util/init.sh
ssh -i $KEYFILE -Y -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null machinekit@192.168.7.2
