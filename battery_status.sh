#!/bin/bash

lines='---------------------------------'
echo -n 'How Frequent? : '
read time1

while true; do
    clear
    date
    echo $lines
    pfetch
    echo $lines
    echo -n 'Battery Capacity : '
    cat /sys/class/power_supply/BAT0/capacity
    echo -n 'Battery Status : '
    cat /sys/class/power_supply/BAT0/status
    echo $lines
    sensors | grep C
    echo $lines
    inxi -C
    sleep $time1 #timer
done
