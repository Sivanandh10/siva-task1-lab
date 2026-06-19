#!/bin/bash
set -uo pipefail
F="/root/layout.txt"
[ -f "$F" ] && grep -q "app.py" "$F" && exit 0
echo "Run: tree /root/project > /root/layout.txt" >&2
exit 1