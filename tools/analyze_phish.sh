#!/bin/bash

# Simple phishing email analysis automation script
# Usage: ./analyze_phish.sh ../samples/apple_phish.eml

if [ $# -eq 0 ]; then
    echo "Usage: $0 <path_to_eml_file>"
    exit 1
fi

EML_FILE=$1
BASENAME=$(basename "$EML_FILE" .eml)
ANALYSIS_DIR="../analysis"

echo "Analyzing phishing email: $EML_FILE"
echo "Results will be saved in $ANALYSIS_DIR"

mkdir -p "$ANALYSIS_DIR"

echo "Extracting headers..."
grep -E '^[A-Za-z\-]+:' "$EML_FILE" > "$ANALYSIS_DIR/${BASENAME}_headers.txt"

echo "Extracting URLs..."
grep -oP "(http|https|mailto)://[^\s\"\'<>]+" "$EML_FILE" | sort | uniq > "$ANALYSIS_DIR/${BASENAME}_urls.txt"

echo "Listing attachments..."
grep -i 'content-disposition: attachment\|filename=' "$EML_FILE" > "$ANALYSIS_DIR/${BASENAME}_attachments.txt"

echo "Extracting sender info..."
grep -i '^From:' "$EML_FILE" > "$ANALYSIS_DIR/${BASENAME}_sender.txt"

echo "Analysis complete for $EML_FILE"
echo "Check the $ANALYSIS_DIR folder for results."

exit 0
