#!/bin/bash

# Check if a URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Send an HTTP OPTIONS request using curl and display the allowed methods
allowed_methods=$(curl -si -X OPTIONS "$url" | grep -i "^Allow:" | awk '{print $2}')

if [ -z "$allowed_methods" ]; then
    echo "No allowed methods found for $url"
else
    echo "Allowed methods for $url: $allowed_methods"
fi

