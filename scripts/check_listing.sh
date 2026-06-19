#!/bin/bash
set -uo pipefail
F="/root/listing.txt"
[ -f "$F" ] && grep -q "app.py" "$F" && exit 0
echo "Run: ls -R /root/project > /root/listing.txt" >&2
exit 1