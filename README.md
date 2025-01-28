# NeoScan v1.1.0

NeoScan is a simple and versatile bash script for performing network scans using `nmap`. This script allows you to execute various types of scans (TCP, UDP, all ports, vulnerability) on a target specified by the user.

## Features

- **TCP Scan**: Performs a TCP scan with service version detection.
- **UDP Scan**: Performs a UDP scan with service detection.
- **Full Scan**: Performs a scan of all ports.
- **Vulnerability Scan**: Performs a vulnerability scan using `vuln` scripts.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/matteosalis04/NeoScan.git


## Requirements
   - **nmap** must be installed on the system.
     
## Example Execution
   ```bash
   Parameters (tcp, udp, all, vuln(script)): tcp
   Target: 192.168.1.1
   Scan the 192.168.1.1....
   ####################
   Scan Completed
   ####################

