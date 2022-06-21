#!/bin/bash

lines='---------------------------------'
echo -n 'How Frequent? : '
read time1

while true; do
    clear
    date
    echo $lines
    $HOME/Downloads/pfetch_for_script/pfetch
    echo $lines
    echo -n 'Battery Capacity : '
    cat /sys/class/power_supply/BAT0/capacity
    echo -n 'Battery Status : '
    cat /sys/class/power_supply/BAT0/status
    echo $lines
    sensors | grep Core
    echo $lines
    inxi -C
    #inxi -C | grep min
    sleep $time1 #timer
done
