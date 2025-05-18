#!/bin/bash

# This script creates a new user on the local system.
# You will be prompted to enter the username (login), the person name, and a password.


# Make sure the script is being execurted with root privilage.

if [[ ${UID} -ne 0 ]]
then
	echo 'Please run with sudo or as root user'
	exit 1
fi

# Get the username.

read -p 'Enter the username to create: ' USER_NAME

# Get the real name.

read -p 'Enter the name of the person or application that will be using this account: ' COMMENT

# Asking for the password of the user.

read -p 'Enter a password for the user: ' PASSWORD

# Creating the account 

useradd -c "${COMMENT}" -m ${USER_NAME}


# Check to see if the useradd command suceeded.
# We don't want to tell the user that an account was created when it hasn't been.

if [[ "${?}" -ne 0 ]]
then
	echo 'The account could not be created.'
	exit 1
fi

# Set the password

echo ${PASSWORD} | passwd --stdin ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then
	echo 'The password for the account could not be set.'
	exit 1
fi

# Force password change on fist login.
passwd -e ${USER_NAME}

# Display the username, password, and the host where the user was created.

echo "username:
${USER_NAME}"
echo 
echo "password:
${PASSWORD}"
echo
echo "host:
${HOSTNAME}"

exit 0
