#!/bin/bash
set -uo pipefail
F="/root/name.txt"
[ -f "$F" ] && grep -q "instruqt-lab" "$F" && exit 0
echo "Run: grep name /root/project/info.txt > /root/name.txt" >&2
exit 1