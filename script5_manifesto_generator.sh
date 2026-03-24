#!/bin/bash
# Script 5 - Open Source Manifesto Generator
# Name: [Your Name] | Reg: [Your Reg No]
# Course: Open Source Software

# note on aliases: you can do alias today='date +%d\ %B\ %Y' in bash
# i'm doing the same idea here with a variable instead
TODAY=$(date '+%d %B %Y')

echo "Open Source Manifesto Generator"
echo "--------------------------------"
echo "Answer 3 questions:"
echo ""

# reading input from the user
read -p "1. One open source tool you use daily: " TOOL
read -p "2. What does freedom mean to you (one word): " FREEDOM
read -p "3. What would you build and share freely: " BUILD

# output file named after the current user
OUTPUT="manifesto_$(whoami).txt"

# writing to file - all echo lines grouped with {}
{
echo "My Open Source Manifesto"
echo "Written by: $(whoami) on $TODAY"
echo ""
echo "Every day I use $TOOL, built by someone who decided"
echo "to share their work instead of locking it away."
echo ""
echo "To me, freedom means $FREEDOM. That is what the GPL is"
echo "trying to protect. MySQL is licensed under GPL v2,"
echo "which is why even after Oracle acquired it, the"
echo "community could fork it into MariaDB."
echo ""
echo "If I built something, I would create $BUILD"
echo "and release it openly. Because the tools I rely on"
echo "were shared freely, and I think that matters."
echo ""
echo "Open source is not just a licence. It is a mindset."
} > "$OUTPUT"

echo ""
echo "Saved to $OUTPUT"
echo ""
cat "$OUTPUT"
