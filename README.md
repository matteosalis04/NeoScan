# NeoScan v2.0.0

## 🚀 Overview
NeoScan is an advanced Bash script that allows you to perform network scans using **Nmap** with enhanced features. It supports multiple scanning modes and saves results to a specified directory.

## 🎯 Features
- **TCP Scan (-sS -sV -Pn)** → Identifies running services
- **UDP Scan (-sU -Pn)** → Checks for available services on UDP
- **Full Scan (-p-)** → Analyzes all ports
- **Vulnerability Scan (-O --script vuln)** → Identifies potential vulnerabilities on the target
- **Automatic Root Privilege Check**
- **Validates Input Parameters and Targets**
- **Saves Output to a Custom or Default Directory**

## 🛠️ Requirements
- Linux/macOS with **Bash**
- **Nmap** installed (install it using `sudo apt install nmap` on Debian/Ubuntu or `brew install nmap` on macOS)
- Root privileges to execute scans

## 📥 Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/NeoScan.git
   cd NeoScan
   ```
2. Make the script executable:
   ```bash
   chmod +x NeoScan.sh
   ```

## ⚡ Usage
Run the script and choose the desired scanning mode:
```bash
sudo ./NeoScan.sh
```
Then enter the required parameters:
1. **Scan Type** (tcp, udp, all, vuln)
2. **Target** (IP or domain to be scanned)
3. **Output Directory** (leave empty for default location)

Example:
```bash
Parameters(tcp, udp, all, vuln(script)): tcp
Directory(leave empty for default): 
Target: 192.168.1.1
```

## 📝 Output
- The scan results will be saved in the specified directory.
- If no directory is provided, results are stored as `scan_tcp.txt`, `scan_udp.txt`, `scan_all.txt`, or `scan_vuln.txt` depending on the scan type.

## ⚠️ Disclaimer
Improper use of Nmap may violate security policies. Ensure you have permission before scanning a network.

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
**Author**: [MagicSale - https://github.com/matteosalis04]  
**Version**: 2.0.0

