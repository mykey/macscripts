#!/bin/bash

# Get cycles number
cycles=$(system_profiler SPPowerDataType | grep "Cycle Count" | awk '{print $3}')

# keuze icoontje - uitgecomment: voorbeeld icoontjes
echo "🔋 $cycles"
#echo "♾ $cycles"
#echo "♽ $cycles"
#echo "♾ $cycles"

echo "---"

# 1000 cycles maximum
# Based on the cycles max number provided by Apple for all Macbooks after 2009
# https://support.apple.com/en-us/HT201585

color=green
if [ "$cycles" -gt 1000 ]; then
    color=red
elif [ "$cycles" -gt 750 ]; then
    color=orange
fi

echo "Cycles: $cycles / 1000 | Status=$color"

# Get battery condition
condition=$(system_profiler SPPowerDataType | grep "Condition" | sed -e 's/^.*: //')

color=green
if [ "$condition" != "Normal" ]; then
    color=red
fi

echo "Battery condition: $condition | Status=$color"
