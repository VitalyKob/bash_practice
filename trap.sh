#!/bin/bash
trap cleanup 1 2 3 15
cleanup()
{
 echo "I was running \"$BASH_COMMAND\" when you interrupted me."
 echo "Quitting."
 exit 1
}
while :
do
 echo -en "hello. "
 sleep 1
 echo -en "my "
 sleep 1
 echo -en "name "
 sleep 1
 echo -en "is "
 sleep 1
 echo "$0"
done
