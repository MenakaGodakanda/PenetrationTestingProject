#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <target_ip>"
  exit 1
fi

TARGET=$1

echo "Starting port scan on $TARGET..."
nmap -p- $TARGET -oN example_port_scan_output.txt
echo "Port scan completed. Results saved to example_port_scan_output.txt"
