#!/bin/bash
# Source directory to be backed up
source_directory="/path/to/source"
# Destination directory (external drive or network location)
destination_directory="/path/to/destination"
# Log file to record backup details
log_file="/path/to/backup.log"
# Perform the backup using rsync
rsync -av --delete "$source_directory" "$destination_directory" >> "$log_file" 2>&1
# Timestamp for the log
time_stamp=$("date")
echo "Backup completed on: $time_stamp" >> "$log_file"