#!/bin/bash
DATA_DIR="/home/ec2-user/cron"

# Make sure folder exist 
if [ -d "$DATA_DIR" ]; then
    # Delete files older than 30 days
    find "$DATA_DIR" -type f -name "cron_*.csv" -mtime +30 -exec rm -f {} \;
    echo "Deleted files older than 30 days in $DATA_DIR"
else
    echo "Directory $DATA_DIR not found!"
fi