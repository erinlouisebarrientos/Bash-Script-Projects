# CHALLENGE 1: Install Git in Linux OS Using Bash Scripting

## Overview
This project demonstrates how to automate the installation of Git software on a Linux operating system using a Bash script. The script checks the operating system version and type before installing.

## Prerequisites

Basic Shell Scripting Knowledge:
-	Understand how to declare and use variables in shell scripting.
-	Familiarity with the if-else statement syntax in shell scripting.

For Windows Users:
-	Git Bash 
-	Windows Subsystem for Linux (WSL)

System Requirements:
-	Your Linux system should be updated.

## Shell Scripting Concepts
Variables in Shell Scripting 

A shell variable is a placeholder for a value, which could be an integer, string, filename, or command.

- Assigning a Value: Use the = operator. Example: 

```bash 
name="cats and dogs" 
```
- Using a Variable in a Command: Prefix the variable with $. Example: 
```bash 
echo $name
```
- Performing Operations: Example of adding two variables: 
```bash
sum=$((a + b))
```
Special Variables (Shell supports predefined special variables):

- $0: Name of the script.
- $1, $2, etc.: Command-line arguments.
- $#: Number of command-line arguments.

## If-Else Statement in Shell Scripting
The if-else statement allows for decision-making based on variable values or command results.

Basic Syntax:
```bash
	if [ condition ]; then
		command
	else
		command
	fi
```
Using elif for Multiple Conditions:
```bash
	if [ condition1 ]; then
		command
	elif [ condition2 ]; then
		command
	else
		command
	fi
```
## Updated Your System (Linux) 
Before installing new software, updating your system’s package information is always a good practice. This ensures that you’re fetching the latest software versions and dependencies: 

1.	Run the following commands : 
```bash
sudo apt-get update  
sudo apt upgrade -y
```
## Uninstall Git from Ubuntu

If Git is already installed, you may need to uninstall it:

- Check the Installed Git Version

To verify Git is installed, you can check for the version installed using the command: 
```bash
git –version
```
- Uninstall Git

Run the following command: 
```bash
sudo apt remove --purge git
```
- Clean Up Unnecessary Packages

There might be some orphaned packages left after uninstalling, you can clean them up using: 
```bash
sudo apt autoremove
```
- Update the Package Database

Refresh your package database to make sure everything is up-to-date using the commands: 
```bash
sudo apt-get update
```
- Verify the Uninstallation

To ensure Git has been completely removed, you can try checking its version. 

If Git has been uninstalled, there will be a prompt to inform you that the git command was not found.


## Scripting Instructions

1.	Save the following script as ‘installinggit.sh’:
```bash
	#!/bin/bash
	echo “Script to install git software”
	echo “Installation started”
	if [ “$(uname)” == “Linux” ];
	then
		echo “This is Linux box, installing git…”
		sudo apt install git
		git --version
	else
		echo “Not installing…”
	fi
```
2.	Make the script executable: 
To execute the script in Linux, you have to modify the permissions. To do this, run the command:
```bash
chmod +x nameofscriptfile
```
3.	Run the script: 
After this, you can run the script with the following command:
```bash
./nameofscriptfile
```
e.g. In the Linux terminal, run the script ‘installinggit.sh’ 

![Installation unsuccessful, uname is not Linux](erinlouisebarrientos/Bash-Script-Projects/Challenge 1/Git Installed.png)

![Intallation successful, uname is Linux](erinlouisebarrientos/Bash-Script-Projects/Challenge 1/Git Installed.png)

![No changes, already installed](erinlouisebarrientos/Bash-Script-Projects/Challenge 1/Already Installed.png)


## NOTES 
This project was based on a tutorial from DEVOPS-TECHSTACK.

## References
[ENABLE BASH FOR WINDOWS 10 & 11](https://www.onlogic.com/blog/how-to-enable-bash-for-windows-10-and-11/)

[How to Install & Uninstall Git on Linux Ubuntu Os](https://rushiinfotech.in/how-to-install-uninstall-git-on-linux-ubuntu-os/)
