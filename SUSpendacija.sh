#!/bin/bash

# Sleep for one minute
sleep 0

# Command to suspend the PC
suspend_command="sudo systemctl suspend"

# Check if suspension is supported
if systemctl list-units --type target | grep suspend.target; then
    # Suspend the PC
    $suspend_command
    echo "PC has been suspended."
else
    echo "Suspension is not supported on your system."
fi

