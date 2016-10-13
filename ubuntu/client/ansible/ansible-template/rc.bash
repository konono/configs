#!/bin/bash
FMT=.yml
cp -a ./roles/template ./roles/$1
cat << EOF > ./$1$FMT
- hosts: all
  roles:
    - $1
EOF
#cp -p ./debug.yml ./$1$FMT
echo "- include: $1$FMT" >> swift.yml
