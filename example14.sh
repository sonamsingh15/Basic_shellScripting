#!/bin/bash
#cat /home/admin1/Desktop/sonam/linux-content/data.csv |awk '{if ($4>10000)print $2 " " $7}'
#cat /home/admin1/Desktop/sonam/linux-content/data.csv | grep 'CAPTAIN' | awk '{sum+=$4}END{print sum}'
#cat /home/admin1/Desktop/sonam/linux-content/data.csv  |awk '{if ( $5>7000 &&  $5<10000 )print $3}'  
cat /home/admin1/Desktop/sonam/linux-content/data.csv  |awk '{sum+=$4}END{print sum/NR}'
