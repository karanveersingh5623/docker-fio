#!/bin/bash

#echo "Starting write test... (60s max)"
#fio /mylogs/fio/$1 --output-format=json --output=write.json
#echo done
#echo IOPS=`cat write.json | jq '.jobs[0].write.iops'`
#echo LAT_50=`cat write.json | jq '.jobs[0].write.clat.percentile["50.000000"]'`usec
#echo LAT_999=`cat write.json | jq '.jobs[0].write.clat.percentile["99.900000"]'`usec
#echo -------
#cp write.json /mylogs/output/$2
#cat write.json
echo -------
echo "Starting read test... (60s max)"
fio /mylogs/fio/$1 --output-format=json --output=read.json
echo done
echo IOPS=`cat read.json | jq '.jobs[0].read.iops'`
echo LAT_50=`cat read.json | jq '.jobs[0].read.clat.percentile["50.000000"]'`usec
echo LAT_999=`cat read.json | jq '.jobs[0].read.clat.percentile["99.900000"]'`usec
cp read.json /mylogs/output/$2
#cat read.json
