#!/bin/bash
set -euxo pipefail
mkdir -p /root/project/src /root/project/docs
echo "print('hello from the lab')" > /root/project/src/app.py
echo "# Project Docs" > /root/project/docs/README.md
cat > /root/project/info.txt <<'EOF'
name: instruqt-lab
owner: siva
EOF