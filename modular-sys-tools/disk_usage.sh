#!/bin/bash
# disk_usage.sh
# This script checks the disk usage for a specified path (default is /).
# It uses 'df -h' to display human-readable disk usage statistics.

# Function to display usage/help message
usage() {
  echo "Usage: $0 [-p <path>]"
  echo "  -p <path>   Specify the directory path to check disk usage (default is /)"
  echo "  -h          Display this help message"
}

# Default path to check is root directory
path="/"

# Parse command line options
while getopts ":p:h" opt; do
  case $opt in
    p)
      # Set path to user input
      path="$OPTARG"
      ;;
    h)
      # Show usage/help and exit
      usage
      exit 0
      ;;
    \?)
      # Invalid option
      echo "Error: Invalid option -$OPTARG" >&2
      usage
      exit 1
      ;;
  esac
done

# Display which path will be checked
echo "Checking disk usage for path: $path"

# Run the disk free command with human-readable output for the given path
df -h "$path"
