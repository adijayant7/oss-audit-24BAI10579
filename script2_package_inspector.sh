#!/bin/bash
# Script 2 - FOSS Package Inspector
# Name: [Your Name] | Reg: [Your Reg No]
# Course: Open Source Software

PACKAGE="mysql-server"

echo "Checking if $PACKAGE is installed..."
echo ""

# if-else to see if the package is there
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed"
    echo ""
    # show version info
    mysql --version
    echo "License : GPL v2"
else
    echo "$PACKAGE is not installed"
    echo "Install it with: sudo apt install mysql-server"
fi

echo ""
echo "--- Philosophy note ---"

# case statement - note based on package name
case $PACKAGE in
    mysql-server|mysql)
        echo "MySQL started as a lightweight database in 1995."
        echo "It became one of the most used databases in the world."
        echo "Sun bought it, then Oracle did - and the community forked to MariaDB."
        ;;
    mariadb)
        echo "MariaDB is what happens when a community refuses to lose control."
        ;;
    apache2|httpd)
        echo "Apache proved open source could run the commercial web."
        ;;
    *)
        echo "Open source - built by people who believed in sharing."
        ;;
esac
