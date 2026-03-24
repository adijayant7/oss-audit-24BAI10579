#!/bin/bash
# Script 4 - Log File Analyzer
# Name: [Your Name] | Reg: [Your Reg No]
# Course: Open Source Software
# Usage: ./script4_log_analyzer.sh /var/log/syslog error

# log file and keyword from arguments
LOGFILE=$1
KEYWORD=${2:-"error"}   # defaults to 'error' if nothing passed
COUNT=0
RETRY=0

echo "Log Analyzer"
echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo ""

# check the file exists first
if [ ! -f "$LOGFILE" ]; then
    echo "Error: $LOGFILE not found"
    echo "Try: sudo ./script4_log_analyzer.sh /var/log/syslog error"
    exit 1
fi

# wait and retry if file is empty
while [ ! -s "$LOGFILE" ] && [ $RETRY -lt 3 ]; do
    echo "File is empty, waiting 2 seconds..."
    sleep 2
    RETRY=$((RETRY + 1))
done

# read the file line by line
while IFS= read -r LINE; do
    # check each line for the keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Found '$KEYWORD' $COUNT times in $LOGFILE"
echo ""
echo "Last 5 matching lines:"
echo "----------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
