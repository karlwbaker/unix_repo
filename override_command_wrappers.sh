#!/bin/bash
# Create a wrapper around the command ls
# File: override_command_wrappers.sh

# It is possible to name a function as the same name as a command you would normally use on the command line. This allows us to create a wrapper. eg. Maybe every time we call the command ls in our script, what we actually want is ls -lh. We could do the following:

# Line 5 - When we have a function with the same name as a command we need to put the keyword command in front of the the name when we want the command as opposed to the function as the function normally takes precedence.


ls () {
command ls -lh
}

ls

# CREATE ADDITIONAL WRAPPERS
# WHERE STORE THE .SH FILE?
# WILL WRAPPERS AUTOMATICALLY BE USED EVERY SESSION, OR DO I NEED TO SOURCE THIS FILE EVERY TIME I OPEN BASH?


