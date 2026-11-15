# windows-it-support-health-check

# Windows IT Support Automation & Diagnostics Lab

A PowerShell-based home lab project designed to automate common Windows IT Support troubleshooting and system health checks.

## Project Overview

This project demonstrates how PowerShell can be used to gather essential system information and generate a diagnostic report to assist with IT Support tasks.

## Features

- **System Information:** Retrieves computer name, Windows edition and OS version.
- **Network Diagnostics:** Displays network adapters, IPv4 addresses, gateways and DNS servers.
- **Connectivity Testing:** Tests connectivity to an external IP address using ping.
- **Storage Monitoring:** Reports total and available disk space across local drives.
- **Windows Update:** Checks the current status of the Windows Update service.
- **Automated Reporting:** Saves diagnostic results to a text file.

## Technologies Used

- Windows 10 Enterprise
- Windows PowerShell
- TCP/IP Networking
- WMI/CIM
- Windows Services

## How to Run

1. Download or clone the repository.
2. Open PowerShell.
3. Navigate to the folder containing the script.
4. Run:

    `.\It-HealthCheck.ps1`

5. Open the generated `IT-HealthReport.txt` file to view the results.

## Skills Demonstrated

- PowerShell scripting and automation
- Windows system administration
- Network connectivity troubleshooting
- Disk space monitoring
- Windows service management
- Technical documentation

## Project Outcome

Developed a reusable diagnostic script that consolidates multiple Windows troubleshooting checks into a single report, demonstrating practical automation skills relevant to IT Support and Helpdesk roles.

## Future Improvements

- Add detailed PASS/WARNING/FAIL reporting.
- Implement storage usage alerts.
- Export results to HTML or CSV.
- Add DNS resolution and service troubleshooting checks.

## Video Demonstration

YouTube walkthrough: Coming soon.

## Author

GitHub: https://github.com/lewisb13