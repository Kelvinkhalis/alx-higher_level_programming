#!/bin/bash

# Check if a URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Variables for email and subject
email="test@gmail.com"
subject="I will always be here for PLD"

# Send an HTTP POST request with the variables in the request body using curl
response=$(curl -s -X POST -H "Content-Type: application/json" -d "{\"email\":\"$email\",\"subject\":\"$subject\"}" "$url")

# Display the body of the response
echo "$response"

