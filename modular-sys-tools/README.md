# Modular System Tools Scripts

![download](https://github.com/user-attachments/assets/8b1878bb-fc14-48fd-ab43-04ec8fc32d94)

## Description

This project contains modular Bash scripts for common system administration tasks:

- **Disk Usage Check**: Check disk space for specified paths.
- **Firewall Check**: Check the status and rules of common firewalls (`ufw` or `firewalld`).
- **IP Monitoring**: Monitor incoming and outgoing IP connections on network interfaces.

Each script is designed to be simple, modular, and easy to extend.

## Project Structure

| Script             | Description                                         | Usage Example                        |
|--------------------|---------------------------------------------------|------------------------------------|
| disk_usage.sh      | Checks disk usage for a given path (default `/`)  | `./disk_usage.sh -p /home`          |
| firewall_check.sh  | Checks firewall status and rules for `ufw`/`firewalld` | `sudo ./firewall_check.sh`          |
| ip_monitor.sh      | Monitors IP connections on interfaces              | `sudo ./ip_monitor.sh -i eth0 -t 20`|

## Learning Objectives

By the end of this project, you should be able to:

* Use Bash to create modular system tools.
* Parse command line arguments with `getopts`.
* Interact with system commands like `df`, `ufw`, `firewall-cmd`, and `netstat`.
* Build simple monitoring and reporting scripts.

## Requirements

* **Operating System:** Linux-based (with `bash` and utilities like `df`, `ufw`, `firewall-cmd`, `netstat`).
* **Permissions:** Some scripts may require `sudo` to run properly.
* **Installed Software:** `ufw` or `firewalld` for firewall checks; `netstat` for IP monitoring.

## How to Use

### 1. Clone or Download the Scripts

If you have this repository in GitHub or zipped, get the files locally.

### 2. Make Scripts Executable

Before running the scripts, you need to set execute permissions:

```bash
chmod +x disk_usage.sh firewall_check.sh ip_monitor.sh
````

This allows you to run the scripts directly from the shell.

### 3. Running the Scripts

#### Disk Usage Check

Check disk usage for a specific path (default is `/`):

```bash
./disk_usage.sh -p /var
```

#### Firewall Check

Check firewall status and rules (requires `sudo`):

```bash
sudo ./firewall_check.sh
```

#### IP Monitor

Monitor IP connections on a network interface for a specified duration (requires `sudo`):

```bash
sudo ./ip_monitor.sh -i eth0 -t 30
```

---

### Important Note: Installing `netstat`

The IP monitor script uses the `netstat` command, which may not be installed by default on some Linux distributions.

To install it, run:

```bash
sudo apt update
sudo apt install net-tools
```

This installs the package that provides the `netstat` command, preventing the `command not found` error.

### Summary

* Make sure `net-tools` is installed before running `ip_monitor.sh`.
* Run the script with `sudo` for full network access.
* Use the `-i` option to specify the interface (e.g., `eth0`).
* Use the `-t` option to specify monitoring duration in seconds.

---

## Features

* **Modularity:** Each task has its own script for easy management.
* **Command-line options:** Scripts support flags and arguments for flexible use.
* **Compatibility:** Uses standard Linux tools and commands.
* **Simple output:** Clear and concise summaries of system status.

## Additional Notes

* Firewall scripts currently support `ufw` and `firewalld` only.
* IP monitoring uses `netstat` which may be replaced with `ss` or `ip` commands in the future.
* Scripts should be run with appropriate permissions (some require `sudo`).

---
