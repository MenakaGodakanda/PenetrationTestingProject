# Penetration Testing Project

## Overview
This project demonstrates how to perform penetration testing using open source tools. The project includes scripts for reconnaissance and reporting.

## Setup Target Machine (Metasploitable)

### 1. Create a New VM:

- Open VirtualBox and click `New`.
- Name the VM (e.g., `Metasploitable`).
- Set the type to `Linux` and version to `Ubuntu (64-bit)`.
- Allocate at least 1GB of RAM (2GB recommended).

### 2. Attach the Metasploitable VMDK:

- Download the Metasploitable VMDK file from SourceForge.
- In VirtualBox, click on `Settings` for your new VM.
- Go to `Storage` and add a new storage controller if one is not present.
- Attach the downloaded VMDK file to the storage controller.

### 3. Network Settings:

- Go to the `Network` tab.
- Set the network adapter to "Bridged Adapter" for direct network access or "Host-Only Adapter" for a safer internal network environment.

### 4. Start the VM:

- Click "Start" to boot up the VM.
- Login with the default credentials (usually username: `msfadmin`, password: `msfadmin`).

## Tools Used
- Kali Linux - a Debian-derived Linux distribution designed for digital forensics and penetration testing. 
- Nmap - Network scanning and discovery tool.

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
