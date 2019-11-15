#!/bin/bash
#This script backs up a directory of your choice   
echo -e "What directory do you wnat to back up?-->\c"
read ANS

echo "performing back up....."
sleep 3
FILE=`echo $ANS | sed s#/#-#g`
DATE=`date +%F`
tar -zcvf ~/backup-$FILE-$DATE.tar.gz. $ANS
echo "Backup performed to ~/backup-$FILE-$DATE.tar.gz"





