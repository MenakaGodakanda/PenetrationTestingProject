# Penetration Testing Project - Version 1

This project demonstrates how to perform penetration testing using open source tools. The project includes scripts for reconnaissance and reporting. The scripts will help automate different stages of a penetration testing process: network scanning, port scanning, and vulnerability scanning.

## Features:

This penetration testing project includes several features that collectively enable a comprehensive security assessment of a target network and systems.

1. **Automated Network Scanning**
- Description: The project includes a script (`network_scan.sh`) that automates the process of scanning a network to identify live hosts.
- Key Points:
  - Utilizes `nmap` with the `-sn` option to perform a ping scan.
  - Identifies all live hosts within a specified subnet.
  - Saves the scan results to a file for further analysis.
- Benefit: Quickly maps out the network, identifying potential targets for further testing.

2. **Detailed Port Scanning**
- Description: The `port_scan.sh` script performs a detailed scan of a specified target IP to identify open ports and running services.
- Key Points:
  - Uses `nmap` with `-sS` for TCP SYN scan and `-sV` for service/version detection.
  - Provides detailed information about the open ports and the services running on them.
  - Saves the scan results to a file.
- Benefit: Helps in identifying potential entry points and understanding the services running on the target.

3. **Vulnerability Scanning**
- Description: The `vulnerability_scan.sh` script automates the process of scanning for vulnerabilities on a target IP using `nmap` with the `nmap-vulners` script.
- Key Points:
  - Runs `nmap` with vulnerability detection scripts to find known vulnerabilities.
  - Uses `-sV` for version detection, which is crucial for identifying vulnerabilities.
  - Saves the scan results to a file.
- Benefit: Identifies known vulnerabilities in services running on the target, providing potential exploitation opportunities.

4. **Comprehensive Reporting**
- Description: Nmapl and script in the project generates detailed reports of their findings.
- Key Points:
  - Nmap scripts save results to text files for network, port, and vulnerability scans.
- Benefit: Enables thorough documentation of the testing process and findings, which is crucial for reporting to stakeholders and for remediation efforts.

5. **Modular and Extensible Design**
- Description: The project’s structure allows for easy addition of new tools, scripts, and features.
- Key Points:
  - Scripts are modular and can be run independently.
  - New tools and functionalities can be added without disrupting existing features.
- Benefit: Ensures the project can evolve with new techniques, tools, and requirements, maintaining its relevance and effectiveness.

6. **Open Source Tools**
- Description: The project exclusively uses open source tools, ensuring accessibility and transparency.
- Key Points:
  - Tools like `nmap` are freely available and widely used in the security community.
  - Open source nature allows for customization and community support.
- Benefit: Reduces cost and ensures that the tools can be inspected, modified, and trusted by users.

## Coding Details:

### network_scan.sh:

This script performs a network scan to identify live hosts on a given subnet using `nmap`.

1. Shebang and Script Start:
- This line tells the system to use the Bash shell to execute the script.

2. Check for Subnet Argument:
- This block checks if the user has provided a subnet to scan. If not, it prints a usage message and exits.

3. Define Subnet:
- This line assigns the first argument passed to the script to the `SUBNET` variable.

4. Run Nmap Scan:
- This block runs `nmap` with the `-sn` (ping scan) option to find live hosts in the specified subnet. The results are saved to `network_scan_results.txt`.

5. Display Results:
- This block prints a message indicating the scan is complete and displays the contents of the results file.

### port_scan.sh:

This script performs a port scan on a specific target IP to identify open ports and services using `nmap`.

1. Shebang and Script Start:
- This line tells the system to use the Bash shell to execute the script.

2. Check for Target IP Argument:
- This block checks if the user has provided a target IP address. If not, it prints a usage message and exits.

3. Define Target IP:
- This line assigns the first argument passed to the script to the `TARGET_IP` variable.

4. Run Nmap Scan:
- This block runs `nmap` with the `-sS` (TCP SYN scan) and `-sV` (version detection) options to find open ports and services on the specified target IP. The results are saved to `port_scan_results.txt`.

5. Display Results:
- This block prints a message indicating the scan is complete and displays the contents of the results file.

### vulnerability_scan.sh

This script performs a vulnerability scan on a specific target IP using `nmap` with the `nmap-vulners` and `nmap-vulscan` scripts.

1. Shebang and Script Start:
- This line tells the system to use the Bash shell to execute the script.

2. Check for Target IP Argument:
- This block checks if the user has provided a target IP address. If not, it prints a usage message and exits.

3. Define Target IP:
- This line assigns the first argument passed to the script to the `TARGET_IP` variable.

4. Run Nmap Vulnerability Scan:
- This block runs `nmap` with the `--script nmap-vulners` (vulnerability detection script) and `-sV` (version detection) options to find vulnerabilities on the specified target IP. The results are saved to `vulnerability_scan_results.txt`.

5. Display Results:
- This block prints a message indicating the scan is complete and displays the contents of the results file.
