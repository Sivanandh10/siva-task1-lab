#!/bin/bash
set -euxo pipefail
mkdir -p /root/project/src /root/project/docs
echo "print('hello from the lab')" > /root/project/src/app.py
echo "# Project Docs" > /root/project/docs/README.md
printf "name: instruqt-lab\nowner: siva\n" > /root/project/info.txt
