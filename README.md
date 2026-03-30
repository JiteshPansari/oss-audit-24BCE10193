# Open Source Audit: VLC Media Player
**Student Name:** Jitesh Pansari  
**Roll Number:** 24BCE10193  
**Chosen Software:** VLC Media Player  

## Project Overview
This repository contains a suite of five shell scripts developed as part of the Open Source Software (OSS) audit. These scripts demonstrate core Linux administration concepts and automate system reporting and file analysis.

## Scripts Description
1. **system_identity.sh**: Provides a welcome screen showing the Linux distribution, kernel version, current user, home directory, system uptime, and the OS license.
2. **package_inspector.sh**: Checks if VLC is installed and provides a philosophical note on codec freedom using a case statement.
3. **dir_auditor.sh**: Uses a for loop to audit the size and permissions of key system directories and checks for VLC's config path.
4. **log_analyzer.sh**: Processes log files line-by-line to count specific keywords (like "error") using while-read loops and command-line arguments.
5. **manifesto_gen.sh**: An interactive script that takes user input to generate a personalized OSS Manifesto saved as a .txt file.

## Step-by-Step Instructions to Run
All scripts are designed to run on a Linux system (verified on Webminal).

1. **Set Permissions:** (Optional but recommended)
   `chmod +x *.sh`
2. **Run Scripts:**
   - Script 1: `bash system_identity.sh`
   - Script 2: `bash package_inspector.sh`
   - Script 3: `bash dir_auditor.sh`
   - Script 4: `bash log_analyzer.sh [logfile_name]` (Example: `bash log_analyzer.sh mytest.log`)
   - Script 5: `bash manifesto_gen.sh` (Follow the on-screen prompts).

## Dependencies
- **Shell:** Bash (Bourne Again SHell)
- **Utilities:** grep, awk, du, uptime, date, cat.
- **Environment:** Any standard Linux terminal (Ubuntu, CentOS, or Webminal).
