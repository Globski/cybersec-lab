# CyberSec Lab

Welcome to the **CyberSec Lab** repository — a collection of hands-on cybersecurity projects and tools designed to teach, demonstrate, and test fundamental and advanced concepts in **information security**, **ethical hacking**, **network forensics**, **cryptography**, and **secure coding practices**.

This lab-based learning approach gives you practical experience in various domains of cybersecurity, from password generation and secure communication to exploitation and incident response.

## Security Considerations

This repository is for **educational purposes only**. Do not use these tools against systems you do not own or have explicit permission to test. Always practice **ethical hacking** and adhere to **local laws and regulations**.

## Repository Structure

| Directory                                              | Description                                                                                                                                                                                                                                          |
| ------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [password-generator](./password-generator)             | A Python-based secure password generator with a GUI (Tkinter). It allows users to generate cryptographically secure passwords using the `secrets` module, supporting length and character set customization. Compliant with 2025 security standards. |
| [modular-sys-tools](./modular-sys-tools)               | Modular Bash scripts for common system admin tasks: disk usage checks, firewall status/rules (`ufw` or `firewalld`), and IP connection monitoring using standard Linux tools. Simple, modular, and extensible scripts.                               |
| [network-sniffer](./network-sniffer)                   | A Python-based packet sniffer using `scapy` to capture and analyze network traffic in real time. Learn about packet structures, protocols, and traffic inspection.                                                                                   |
| [port-scanner](./port-scanner)                         | A lightweight, fast TCP port scanner built in Python that uses sockets and multithreading to identify open ports and services on a target host. Ideal for reconnaissance and testing firewall rules.                                                 |
| [hash-cracker](./hash-cracker)                         | A tool to perform dictionary and brute-force attacks against hashed passwords using Python and the `hashlib` library. Supports MD5, SHA-1, SHA-256, and SHA-512. Great for understanding password storage weaknesses.                                |
| [file-encryption](./file-encryption)                   | A project demonstrating symmetric encryption (AES) and file protection using Python’s `cryptography` library. Helps you understand how to securely store and transmit sensitive data.                                                                |
| [web-vuln-scanner](./web-vuln-scanner)                 | A basic web vulnerability scanner in Python that checks for common issues like open directories, exposed files, and misconfigurations.                                                                                                               |
| [malware-analysis-sandbox](./malware-analysis-sandbox) | A controlled environment for basic static and dynamic malware analysis. Includes samples, disassembly with `Ghidra`, and behavior analysis tools.                                                                                                    |
| [log-analyzer](./log-analyzer)                         | A Python script that parses and analyzes system logs (e.g., auth.log, access.log) to detect suspicious login attempts, failed SSH logins, and brute-force activity.                                                                                  |
| [sql-injection-lab](./sql-injection-lab)               | A vulnerable web application designed to teach and test SQL injection attacks and defense techniques.                                                                                                                                                |
| [incident-response-sim](./incident-response-sim)       | A simulated breach-response scenario where users must investigate, analyze, and respond to cybersecurity incidents based on logs, binaries, and network captures.                                                                                    |

---
