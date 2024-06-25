# Penetration Testing Project

This project demonstrates how to perform penetration testing using open source tools. The project includes scripts for reconnaissance and reporting.

## Overview

<img width="714" alt="Screenshot 2024-06-25 at 2 03 57 PM" src="https://github.com/MenakaGodakanda/PenetrationTestingProject/assets/156875412/adf2efc3-c912-49e6-b05b-c854cac01902">

### Explanation:
- **VirtualBox**: Hosts the Target VM, which is where the penetration testing activities are conducted.
- **Attacker VM (Kali Linux)**: A virtual machine configured with tools and scripts interact with the Target VM to perform scans and analyze results.
- **Target VM (Metasploitable)**: A virtual machine configured with intentionally vulnerable services and applications.

## Setting Up the Environment

### Install VirtualBox

- Download VirtualBox from the [official website](https://www.virtualbox.org/wiki/Downloads).
- Follow the installation instructions for your operating system.

### Set Up Kali Linux Virtual Machine

- Download the Kali Linux ISO from the [official website](https://www.kali.org/get-kali/#kali-installer-images).
- Open VirtualBox and create a new virtual machine:
    - Name: Kali Linux
    - Type: Linux
    - Version: Debian (64-bit)
- Allocate memory (RAM) and create a virtual hard disk.
- Set the network adapter to "Bridged Adapter" for direct network access or "Host-Only Adapter" for a safer internal network environment.
    - Go to `Settings` -> `Network` -> `Adapter 1` -> `Attached to: Bridged Adapter`.
- Start the virtual machine and select the Kali Linux ISO to boot from.
- Follow the installation instructions to install Kali Linux.

### Setup Metasploitable Virtual Machine (Target)

- Download Metasploitable from [SourceForge](https://sourceforge.net/projects/metasploitable/files/Metasploitable2/).
- Open VirtualBox and create a new virtual machine:
    - Name: Metasploitable
    - Type: Linux
    - Version: Ubuntu (64-bit)
- Allocate memory (RAM) and use the downloaded Metasploitable VMDK file as the virtual hard disk.
- Set the network adapter to "Bridged Adapter" for direct network access or "Host-Only Adapter" for a safer internal network environment.
    - Go to `Settings` -> `Network` -> `Adapter 1` -> `Attached to: Bridged Adapter`.
- Start the virtual machine.
- Login with the default credentials (usually username: `msfadmin`, password: `msfadmin`).

![Screenshot 2024-06-25 000207](https://github.com/MenakaGodakanda/PenetrationTestingProject/assets/156875412/57fc87a7-b3d2-4230-b93b-fc77736d5532)

## Tools Used
- **Nmap** - Network scanning and discovery tool.

## Setup

### Update and upgrade the system
```
sudo apt update && sudo apt upgrade -y
```

### Install Nmap
```
sudo apt install -y nmap
```

## Finding the IP Address

Here’s a detailed example of finding the IP address on a Linux host:

- Open Terminal.
- Run the `ip a` command:

```bash
ip a
```

- Identify the Primary Network Interface:
    - Look for your primary network interface (often named `eth0`, `enp0s3`, or `wlan0`). You will see output similar to this:

Kali Linux IP Address (Attacker): The IP address here is `192.168.1.12`.<br><br>
![Screenshot 2024-06-25 001853](https://github.com/MenakaGodakanda/PenetrationTestingProject/assets/156875412/4b6f4fc2-4d71-45ff-a8ea-052820c40d8e)
<br><br>

Metasploitable IP Address (Target): The IP address here is `192.168.1.17`.<br><br>
![Screenshot 2024-06-25 000216 - Copy](https://github.com/MenakaGodakanda/PenetrationTestingProject/assets/156875412/89b7d585-4067-4b34-93a9-fa2585b3c9df)

## Usage

### Network Scan

- Navigate to the reconnaissance directory and run the network_scan.sh script.
- The <target_ip> is `192.168.1.17`.
- The results will be saved as `example_network_scan_output.txt`.

```bash
cd reconnaissance
chmod +x network_scan.sh
./network_scan.sh <target_ip>
```

![Screenshot 2024-06-24 235640](https://github.com/MenakaGodakanda/PenetrationTestingProject/assets/156875412/db94cb0d-97e8-4ad8-bd34-fb490a0d6995)

### Port Scan

- Run the port_scan.sh script.
- The <target_ip> is `192.168.1.17`.
- The results will be saved as `example_port_scan_output.txt`.

```bash
chmod +x port_scan.sh
./port_scan.sh <target_ip>
```

![Screenshot 2024-06-24 235651](https://github.com/MenakaGodakanda/PenetrationTestingProject/assets/156875412/8b8b060e-7c80-44b1-9264-15648171f3d0)

### Vulnerability Scan

- Run the vulnerability_scan.sh script.
- The <target_ip> is `192.168.1.17`.
- The results will be saved as `example_vulnerability_scan_output.txt`.

```bash
chmod +x vulnerability_scan.sh
./vulnerability_scan.sh <target_ip>
```

![Screenshot 2024-06-25 000828](https://github.com/MenakaGodakanda/PenetrationTestingProject/assets/156875412/5b512ec2-f729-4f1c-b539-17b9bad400f2)

## Generate Report
- After the scan is complete, create a detailed report of the findings, including any vulnerabilities detected.
- Templates for reporting findings is `reporting` / `report_template.md`.
- Provide example output files in the `examples/` directory. You can generate these by running your scripts against a controlled target system.

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
