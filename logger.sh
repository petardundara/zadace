#!/bin/bash

# Define the output file
output_file="logged_in_users.txt"

# Interval in minutes (change this to the desired interval)
interval_minutes=60

while true; do
    # Use the `who` command to get a list of logged-in users with login times
    # Append the information to the output file without overwriting
    who >> "$output_file"
    
    echo "List of logged-in users with login times appended to $output_file."
    
    # Sleep for the specified interval before checking again
    sleep "$((interval_minutes * 60))"
done

