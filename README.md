# AptFixer

**AptFixer is a minimalistic command-line utility that restores broken APT keyring configurations on Kali Linux.**

When Kali Linux's package manager (`apt`) breaks due to expired or missing GPG keys, AptFixer provides a clean and automated fix by fetching the latest keyring and performing a system update. This tool is particularly useful after fresh installations, updates, or in air-gapped environments where repository keys might be invalid or outdated.

## Key Features

- Fixes GPG key issues in Kali Linux's APT system
- Automatically downloads the latest Kali keyring
- Updates and upgrades the system in one flow
- Minimal dependencies — pure Bash script
- Ideal for quick recovery in broken package environments

## Supported Environments

| Operating System | Use Case                             | Example                                 |
|------------------|---------------------------------------|------------------------------------------|
| Kali Linux       | Fix GPG key issues after install      | `apt update` fails due to missing keys   |
| Debian-based     | (Partial) Not officially supported     | May require manual adjustment            |

## Installation

### One-liner install

```
curl -o AptFixer.sh https://raw.githubusercontent.com/ThinkCyberProjects/AptFixer/main/AptFixer.sh && chmod +x AptFixer.sh
```

### Step-by-step

1. Download the script:
   ```
   curl -o AptFixer.sh https://raw.githubusercontent.com/ThinkCyberProjects/AptFixer/main/AptFixer.sh
   ```
2. Make it executable:
   ```
   chmod +x AptFixer.sh
   ```

3. Run it with root privileges:
   ```
   sudo ./AptFixer.sh
   ```

## Usage

The script is designed for direct execution. Simply run the following:

```
sudo ./AptFixer.sh
```

What it does:

- Downloads the latest Kali Linux GPG keyring to the appropriate directory
- Performs `apt update` to refresh package lists
- Executes a full `apt upgrade` to apply the latest updates
- Clears the terminal and confirms completion

## Examples

```
sudo ./AptFixer.sh
# Runs the full key repair and system update process
```

```
chmod +x AptFixer.sh && sudo ./AptFixer.sh
# One-liner to make executable and run it
```

## Additional Tips

- This script is intended for **Kali Linux only**. While it may work on other Debian-based systems, it pulls Kali-specific keys.
- Use this after encountering key errors like: `NO_PUBKEY` or `The following signatures couldn't be verified`.
- Internet connection is required for key download and updates.
- For air-gapped environments, manually download the keyring and update the script accordingly.

## Created by

**ThinkCyberProjects** – [https://github.com/ThinkCyberProjects](https://github.com/ThinkCyberProjects)
