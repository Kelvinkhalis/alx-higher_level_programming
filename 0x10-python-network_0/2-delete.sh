#!/bin/bash

# Check if a URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Send a DELETE request using curl and store the response in a temporary file
response_file=$(mktemp)
curl -s -X DELETE "$url" -o "$response_file"

# Display the body of the response
cat "$response_file"

# Clean up the temporary file
rm "$response_file"

