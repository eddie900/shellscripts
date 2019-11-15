#!/bin/bash
#This script creates a report of our disk configuration.
FLUFFY_BUNNY=`hostname`

echo "disk report saved to $FLUFFY_BUNNY.report"

echo -e "\n LVM configuration: \n\n" >>$FLUFFY_BUNNY.report
lvscan >>$FLUFFY_BUNNY.report

echo -e "\n\n Partition configuration: \n\n"   >>$FLUFFY_BUNNY.report
fdisk -l | head -17 >>$FLUFFY_BUNNY.report

echo -e "\n\n Mounted Filesystems: \n\n" >>$FLUFFY_BUNNY.report
df -hT | grep -v tmp >>$FLUFFY_BUNNY.report
echo -e "\n\n RAID Configuration: \n\n" >>$FILENAME.report
mdadm --detail /dev/md0 >>$FILENAME.report


