#!/bin/bash

# Check if a URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Send an HTTP GET request with the custom header using curl
response=$(curl -s -H "X-School-User-Id: 98" "$url")

# Display the body of the response
echo "$response"

