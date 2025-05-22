#!/bin/bash
# ip_monitor.sh
# This script monitors active incoming and outgoing IP connections on a network interface.
# It uses netstat to list TCP and UDP connections before and after a monitoring period.

# Function to display usage/help message
usage() {
  echo "Usage: $0 [-i <interface>] [-t <duration_seconds>]"
  echo "  -i <interface>    Specify the network interface to monitor (default: all interfaces)"
  echo "  -t <seconds>      Duration in seconds to monitor (default: 10 seconds)"
  echo "  -h                Display this help message"
}

# Default values for interface and monitoring duration
interface=""
duration=10

# Parse command line options
while getopts ":i:t:h" opt; do
  case $opt in
    i)
      # Set the interface to monitor
      interface="$OPTARG"
      ;;
    t)
      # Set the monitoring duration
      duration="$OPTARG"
      ;;
    h)
      # Show help and exit
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

echo "Monitoring IP connections for $duration seconds on interface: ${interface:-all}"

# Show current active connections before monitoring
echo "Current active connections:"
if [ -z "$interface" ]; then
  # No interface specified: show all connections
  sudo netstat -ntu | tail -n +3
else
  # Filter connections by interface name
  sudo netstat -ntu | grep "$interface" | tail -n +3
fi

# Wait for the specified duration to monitor connections over time
echo "Monitoring in progress... (sleeping for $duration seconds)"
sleep "$duration"

# Show active connections after monitoring period
echo "Active connections after $duration seconds:"
if [ -z "$interface" ]; then
  sudo netstat -ntu | tail -n +3
else
  sudo netstat -ntu | grep "$interface" | tail -n +3
fi

