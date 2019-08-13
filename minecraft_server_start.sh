#!/bin/bash

#scans the folder for the latest version of forge and adds it to the 'screen' command, launching a minecraft server instance silently
#change the 'terranova' after the 'screen -dmS' command to a convenient name for you, and the '/opt/minecraft/terranova/' to match the installation point of your server

cd /opt/minecraft/terranova
app=`ls forge-1.12.2-*.jar | tail -n 1 |grep -i forge`
#echo "${app}"
screen -dmS terranova java -server -Xms512M -Xmx4008M -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:ParallelGCThreads=4 -XX:+AggressiveOpts -jar ${app} nogui