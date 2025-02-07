# NeoScan v1.0.0

## 🚀 Overview
This Bash script allows you to quickly and efficiently perform a network scan using **Nmap**. The user can choose between different scanning modes to obtain detailed information about connected devices.

## 🎯 Features
- **TCP Scan (-sS -sV -Pn)** → Identifies running services
- **UDP Scan (-sU -Pn)** → Checks for available services on UDP
- **Full Scan (-p-)** → Analyzes all ports
- **Vulnerability Scan (-O --script vuln)** → Identifies potential vulnerabilities on the target

## 🛠️ Requirements
- Linux/macOS with **Bash**
- **Nmap** installed (install it using `sudo apt install nmap` on Debian/Ubuntu or `brew install nmap` on macOS)

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
./NeoScan.sh
```
Then enter the required parameters:
1. **Scan Type** (tcp, udp, all, vuln)
2. **Target** (IP or domain to be scanned)

Example:
```bash
Parameters(tcp, udp, all, vuln(script)): tcp
Target: 192.168.1.1
```

## 📝 Output
The scan results will be saved in the `output.txt` file for future reference.

## ⚠️ Disclaimer
Improper use of Nmap may violate security policies. Ensure you have permission before scanning a network.

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
**Author**: MagicSale - https://github.com/matteosalis04/
**Version**: 1.0.0

