#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <URL> <filename>"
    exit 1
fi

url="$1"
filename="$2"

# Send the POST request with JSON data from the file
response=$(curl -X POST -H "Content-Type: application/json" -d "@$filename" "$url")

# Display the response body
echo "Response Body:"
echo "$response"

