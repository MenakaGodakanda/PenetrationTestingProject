#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <target_ip>"
  exit 1
fi

TARGET=$1

echo "Starting network scan on $TARGET..."
nmap -A -T4 $TARGET -oN example_network_scan_output.txt
echo "Network scan completed. Results saved to example_network_scan_output.txt"
