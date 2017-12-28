#!/bin/bash

UPHOSTS=/home/scripts/uphosts.`date +%m%d%Y`
DOWNHOSTS=/home/scripts/downhosts.`date +%m%d%Y`
PREFIX=10.116.197
for OCTET in `seq 1 254`
do
 echo -en "Pinging ${PREFIX}.${OCTET}...."
 ping -c1 -w1 ${PREFIX}.${OCTET} > /dev/null 2>&1
  if [ "$?" -eq "0" ]; then
  echo " OK"
  echo "${PREFIX}.${OCTET}" >> ${UPHOSTS}
 else
  echo " Failed"
  echo "${PREFIX}.${OCTET}" >> ${DOWNHOSTS}
 fi
done
