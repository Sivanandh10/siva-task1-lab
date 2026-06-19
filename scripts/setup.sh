#!/bin/bash
set -euxo pipefail
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y jq tree
mkdir -p /root/project/src /root/project/docs
echo "print('hello from the lab')" > /root/project/src/app.py
echo "# Project Docs" > /root/project/docs/README.md
cat > /root/data.json <<'EOF'
{"name": "instruqt-lab", "version": "1.0", "tools": ["jq", "tree"]}
EOF