```markdown
# PHP Installer Script for Windows

A simple batch script to automate the installation of PHP on Windows machines. This script downloads, extracts, configures, and verifies PHP with no manual intervention.

---

## Features
- Automatically downloads the specified PHP version from the official PHP source.
- Extracts and installs PHP to the designated directory.
- Configures the system PATH to include PHP for command-line usage.
- Verifies PHP installation to ensure everything is set up correctly.

---

## Prerequisites
Before running this script, ensure:
- **Windows OS** with administrative privileges.
- **PowerShell** is installed (default on most Windows systems).
- A stable internet connection to download PHP.

---

## How to Use
1. Clone this repository:
   ```bash
   git clone https://github.com/obahchimaobi/PHP-installer
   ```
2. Open a terminal with **administrator privileges**.
3. Navigate to the repository directory:
   ```bash
   cd php-installer
   ```
4. Run the installer script:
   ```bash
   php_installer.bat
   ```
5. Follow the on-screen instructions. Once completed, PHP will be installed and configured.

---

## Customization
You can customize the script to:
- Change the PHP version to install.
- Specify a different installation directory.

To modify these settings, edit the following lines in `php_installer.bat`:
```bat
set "PHP_VERSION=8.2.0"
set "PHP_DIR=C:\php"
```

---

## Troubleshooting
### Common Issues:
1. **PHP not recognized in Command Prompt:**
   - Ensure the script ran with administrator privileges.
   - Check that the system PATH includes the PHP installation directory.

2. **PowerShell Errors:**
   - Verify that PowerShell is installed and functional on your system.

---

## Contributing
Contributions are welcome! If you encounter bugs or have suggestions for improvement:
- Open an issue in the repository.
- Submit a pull request with your changes.

---

## License
This project is licensed under the [MIT License](LICENSE).

---

## Contact
For any questions or suggestions, feel free to contact [your email/username].
```

### Key Changes:
1. **Removed any mention of visiting the website** for manual downloads.
2. Emphasized that the script handles **automatic downloading**.
3. Updated the troubleshooting and usage instructions accordingly.

Let me know if you'd like further refinements or additional sections in the documentation!