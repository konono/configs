#!/bin/bash
cat <<EOF> $1.conf
Host $1
    HostName $2
    User $3
    Port 22
    IdentityFile ~/.ssh/keys/$1.key
    ServerAliveInterval 60
EOF
