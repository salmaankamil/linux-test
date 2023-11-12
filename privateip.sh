#!/bin/bash

# Get the private IP address using ifconfig
PRIVATE_IP_ADDRESS=$(ifconfig | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | grep -v "127.0.0.1" | head -n1)

# Specify the file to save the private IP address
OUTPUT_FILE="private_ip_address.txt"

# Save the private IP address to the file
echo "$PRIVATE_IP_ADDRESS" >> "$OUTPUT_FILE"

# Display a message
echo "Private IP address has been saved to $OUTPUT_FILE"
