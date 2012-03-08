#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk
HADOOP_HOME=/home/yuen/tools/hadoop-0.20.203.0

rm -r out
$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/contrib/streaming/hadoop-streaming-0.20.203.0.jar \
	-input in \
	-output out \
	-mapper "./map_red.py map" \
	-reducer "./map_red.py red" \
	-jobconf mapred.map.tasks=5 \
	-jobconf mapred.reduce.tasks=10 \
	-jobconf mapred.job.name=yuen_test 
