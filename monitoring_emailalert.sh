#!/bin/bash
FU=$(df | grep "vda1" | awk '{print $5}' | tr -d %)
TO="[email]"
if [[ $FU -ge 70 ]]
then 
    echo "Warning, Disk Space is Low: $FU %" | mail -s "DISK SPACE ALERT!" $TO
else
    echo "All Good." | mail -s "DISK SPACE ALERT!" $TO
fi
