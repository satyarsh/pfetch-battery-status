#!/bin/bash

lines='---------------------------------'

while true; do
    clear
    date
    echo $lines
    $HOME/Downloads/pfetch-0.6.0/pfetch
    echo $lines
    echo -n 'Battery Capacity : '
    cat /sys/class/power_supply/BAT0/capacity
    echo -n 'Battery Status : '
    cat /sys/class/power_supply/BAT0/status
    echo $lines
    sensors | grep Core
    sleep 60
done
