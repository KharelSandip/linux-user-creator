# linux-user-creator

A simple Bash script to create a user on Linux-based devices.

## Overview

The linux-user-creator project is a Bash script that simplifies the process of creating a new user on your Linux system. The script prompts you for the username, the real name (or a description), and a password. It then creates the user, sets the password, and forces a password change on the first login.

## Features

- **User Creation:** Create a new user easily with a single script.
- **Password Setup:** Automatically sets the provided password and enforces a password change upon first login.
- **Validation:** Checks for proper execution privileges and confirms successful user creation.

## Requirements

- A Linux-based operating system.
- Bash shell.
- Superuser privileges (run the script with `sudo` or as the root user).

## Installation

Clone the repository to your local machine:

```bash
git clone https://github.com/KharelSandip/linux-user-creator.git
cd linux-user-creator
```

## Usage

To run the script on your Linux device, execute the following commands:

```bash
# Option 1: Run using the bash command
bash linux-user-creator.sh

# Option 2: Make the script executable and then run it
chmod +x linux-user-creator.sh
./linux-user-creator.sh
```

Follow the on-screen prompts to enter:
- The username to create.
- The real name or description associated with the account.
- The password for the account.

## How It Works

1. **Privilege Check:** The script checks if it is run with superuser privileges. If not, it exits with an error message.
2. **User Input:** The script prompts you to enter the username, a comment about the user (or a name), and the password.
3. **User Creation:** It uses the `useradd` command to create the new user and verifies that the operation succeeds.
4. **Password Setup:** The provided password is set using the `passwd --stdin` option. If setting the password fails, it notifies you.
5. **Forced Password Change:** To enhance security, the script forces the user to change their password upon first login.
6. **Display Information:** Finally, the script displays the username, password, and the host name where the account was created.


## Troubleshooting

- **Permission Issues:**  
  Ensure you run the script as root or with `sudo`. If you get a “Please run with sudo or as root user” message, rerun the script with the appropriate privileges.

- **User Already Exists:**  
  If the specified username already exists, the `useradd` command will fail. In such cases, use a unique username.

- **Password Setting Issues:**  
  If setting the password fails, verify that your system supports the `passwd --stdin` option. Some systems may require alternative approaches for setting passwords in a script.

## Contributing

Contributions and suggestions for improvements are welcome.  
If you want to contribute:
1. Fork the repository.
2. Make your changes.
3. Submit a pull request with a clear explanation of your changes.

## Credits

This project was created as part of a hand-on lab exercise from Professor **[Jason Cannon](https://www.linkedin.com/in/jasonacannon/)**.  


## License

This project is open-source and free to use.
