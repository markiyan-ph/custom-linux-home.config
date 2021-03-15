#!/bin/bash
# toggle state of synaptics touchpad

tpid=`xinput list | grep Touchpad | sed 's/.*id\=\([0-9]\+\).*/\1/g'`
# tpid=11

declare -i status
status=`xinput list-props ${tpid} | grep Device\ Enabled | sed -e 's/.*\:[ \t]\+//g'`
echo ${status}

if [ 0 -eq ${status} ] ; then
    xinput enable ${tpid}
else
    xinput disable ${tpid}
fi
