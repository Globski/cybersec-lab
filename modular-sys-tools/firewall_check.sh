#!/bin/bash
# firewall_check.sh
# This script checks the status and rules of common Linux firewalls: ufw or firewalld.
# It detects which firewall is installed and prints its status and rules.

# Function to show usage instructions
usage() {
  echo "Usage: $0"
  echo "Check the status and rules of ufw or firewalld firewall."
}

# Check if 'ufw' command exists on the system
if command -v ufw &>/dev/null; then
  echo "UFW firewall detected."
  echo "Status and rules:"
  # Display detailed status of ufw firewall (requires sudo)
  sudo ufw status verbose
# Else, check if 'firewall-cmd' command exists (firewalld)
elif command -v firewall-cmd &>/dev/null; then
  echo "Firewalld detected."
  echo "Status and rules:"
  # Check if firewalld is running
  sudo firewall-cmd --state
  # List all firewall rules and zones
  sudo firewall-cmd --list-all
else
  # Neither ufw nor firewalld found
  echo "No supported firewall (ufw or firewalld) detected on this system."
  exit 1
fi
