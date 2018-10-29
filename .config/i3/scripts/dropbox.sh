#!/bin/bash

# status=$(dropbox-cli status)
status=$(echo -e 'get_dropbox_status\ndone' | socat - ~/.dropbox/command_socket | grep 'status' | cut -f 2)

echo $status
echo $status
