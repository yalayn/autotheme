#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

hourNow=$(date +"%H")
hourSunrises=07
hourSunset=17

if [ $hourNow -eq $hourSunrises ] || [ $hourNow -gt $hourSunrises ]; then
    if [ $hourNow -lt $hourSunset ]; then
        #echo "light"
        sh /home/yordin/Projects/autotheme/light.sh
    else
        #echo "dark"
        sh /home/yordin/Projects/autotheme/dark.sh
    fi
else
    #echo "dark"
    sh /home/yordin/Projects/autotheme/dark.sh
fi
