#!/bin/bash
PERCENTAGE=$(ioreg -n AppleDeviceManagementHIDEventService | fgrep BatteryPercent | fgrep -v { | sed 's/[^[:digit:]]//g')
echo $USER, uw  muis heeft een batterijpercentage van $PERCENTAGE \%
