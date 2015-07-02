#!/bin/bash

DEBUG=0
HTIME=`hwclock -r| awk '{printf("%s,%s,%02u,%s,%s,%s\n", $1,$3,$2,$5,$7,$4);}'`
STIME=`date| awk '{printf("%s,%s,%02u,%s,%s,%s\n", $1,$2,$3,$4,$5,$6);}'`

dgp()
{
	[ 0 -ne $DEBUG ] && echo "$1" >> /tmp/synhtime.dgp
}

if [ "$STIME" != "$HTIME" ]; then
	hwclock -s
	dgp "update time: HTIME=$HTIME STIME=$STIME"
else
	dgp "no need update time"
fi
