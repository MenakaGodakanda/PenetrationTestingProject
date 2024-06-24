# Penetration Testing Project

## Overview
This project demonstrates how to perform penetration testing using open source tools. The project includes scripts for reconnaissance and reporting.

## Tools Used
- Kali Linux
- Nmap

## Setup

### Update and upgrade the system
```
sudo apt update && sudo apt upgrade -y
```

### Install Nmap
```
sudo apt install -y nmap
```

## Usage

### Network Scan

Navigate to the reconnaissance directory and run the network_scan.sh script.

```bash
cd reconnaissance
chmod +x network_scan.sh
./network_scan.sh <target_ip>
```

### Port Scan

```bash
cd reconnaissance
chmod +x port_scan.sh
./port_scan.sh <target_ip>
```

### Vulnerability Scan

```bash
cd reconnaissance
chmod +x vulnerability_scan.sh
./vulnerability_scan.sh <target_ip>
```

## Directory Structure

```
PenetrationTestingProject/
├── README.md
├── reconnaissance/
│   ├── network_scan.sh
│   ├── port_scan.sh
│   └── vulnerability_scan.sh
├── reporting/
│   └── report_template.md
└── examples/
    ├── example_network_scan_output.txt
    ├── example_port_scan_output.txt
    └── example_vulnerability_scan_output.txt
```

- **reconnaissance/**: Scripts for network and vulnerability scanning.
- **reporting/**: Templates for reporting findings.
- **examples/**: Example output files.

## Disclaimer

This project is for educational purposes only. Do not use these tools and scripts on systems you do not have permission to test.

## License

This project is licensed under the MIT License.
