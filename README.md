# NeoScan v3.0.0 - Advanced Nmap Scanning Tool

## 🎯 Overview
A complete script revision that introduces a modular structure, advanced security checks, and improved output management.

## 🚀 Major Changes
- Complete code restructuring with modular architecture
- Introduction of security checks and validation
- Flexible output management system
- New ASCII art banner
- Full English language support

## ✨ New Features
- **Security Checks**:
  - Automatic root permissions verification
  - nmap installation check with auto-install capability
  - Robust target and parameter validation

- **File Management**:
  - Scan-type specific outputs (scan_tcp.txt, scan_udp.txt, etc.)
  - Custom directory support
  - Flexible path handling

- **UX Improvements**:
  - Username and timestamp display
  - More descriptive error messages
  - Clear output file path feedback
  - Professional banner with project information

## 🔧 Technical Improvements
- Introduction of modular functions:
  - `input()`: user input handling
  - `check_parameter()`: parameter validation
  - `check_target()`: IP/hostname validation
  - `comands()`: scan execution
  - `complete()`: completion handling
  - `main()`: workflow orchestration

## ⚙️ Technical Requirements
- Bash shell
- Root privileges
- nmap installed

## 📝 Usage
```bash
sudo ./NeoScan.sh

Available scan types:
- tcp  (TCP scan with service version detection)
- udp  (UDP scan)
- all  (Full port scan)
- vuln (Vulnerability scan)
