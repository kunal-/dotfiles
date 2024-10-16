note() {
    # Define the log file
    local logfile=~/activity_log.txt
    
    # Log the message with a timestamp
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $*" >> "$logfile"
}
