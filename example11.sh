#!/bin/bash -x
#cat ~/Desktop/sonam/linux-content/access.log | grep '/' | awk '{print $4 $11}' | grep -v '"-"' | sort -nr | uniq -c

cat ~/Desktop/sonam/linux-content/access.log  |awk '{print $9" "$10}' | head -4
