#!/bin/bash

# Check if a URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Send an HTTP GET request using curl and store the response in a temporary file
response_file=$(mktemp)
curl -s -o "$response_file" "$url"

# Get the status code from the response header
status_code=$(curl -s -I "$url" | head -n 1 | awk '{print $2}')

# Display the body of the response if the status code is 200
if [ "$status_code" == "200" ]; then
    cat "$response_file"
else
    echo "Error: Non-200 status code ($status_code)"
fi

# Clean up the temporary file
rm "$response_file"

