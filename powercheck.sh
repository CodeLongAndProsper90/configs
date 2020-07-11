#!/bin/bash

unset cat
POWER=`cat /sys/class/power_supply/BAT0/capacity`
POWER=$(($POWER/1))
if (( $POWER < 3 ))
then
  shutdown +h now
elif (( $POWER < 5 ))
then
  notify-send 'Shutting down' 'Power critical, shutting down in 10s'
  #shutdown -h +10s
elif (( $POWER < 10 ))
then
  notify-send 'Power low' 'Shutting down in 2m'
  #shutdown -h +2m
elif (( $POWER < 20 ))
then
  notify-send 'Power < 20%' 'Power is low, please connect to power'
fi
