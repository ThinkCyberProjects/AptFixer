#!/bin/bash

echo "[*] Running Kali Key Fixer"
sleep 1
sudo wget https://archive.kali.org/archive-keyring.gpg -O /usr/share/keyrings/kali-archive-keyring.gpg #2>/dev/null
echo "[*] Updating the system"
sudo apt update
sudo apt upgrade -y
clear
echo  "[+] Kali Key Fixer Completed"
