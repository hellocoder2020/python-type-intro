#!/bin/sh
pid=`ps -ef | grep python3 | grep '165.232.162.119' | awk '{print $2}'`
echo $pid
kill $pid