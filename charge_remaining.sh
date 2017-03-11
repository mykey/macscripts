remaining=$(system_profiler SPPowerDataType | grep "Charge Remaining" | awk '{print $4}e')
capacity=$(system_profiler SPPowerDataType | grep "Charge Capacity" | awk '{print $5}e')
pct=$(pmset -g batt | grep "Internal" | awk '{print $3}e')
time=$(pmset -g batt | grep "Internal" | awk '{print $5}e')
echo "$USER battery remaining $remaining / $capacity (mAh)"
echo Battery level $pct $time remaining
