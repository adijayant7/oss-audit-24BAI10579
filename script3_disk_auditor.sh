#!/bin/bash
# Script 3 - Disk and Permission Auditor
# Name: [Your Name] | Reg: [Your Reg No]
# Course: Open Source Software

# directories i want to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit"
echo "---------------"

# loop through each one
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # awk pulls permissions and owner out of ls output
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR"
        echo "  Permissions : $PERMS"
        echo "  Size        : $SIZE"
        echo ""
    else
        echo "$DIR does not exist"
        echo ""
    fi
done

# checking mysql specific paths
echo "--- MySQL config paths ---"

MYSQL_PATHS=("/etc/mysql" "/var/lib/mysql" "/var/log/mysql")

for P in "${MYSQL_PATHS[@]}"; do
    if [ -e "$P" ]; then
        echo "Found: $P"
        ls -ld "$P"
    else
        echo "Not found: $P"
    fi
done
