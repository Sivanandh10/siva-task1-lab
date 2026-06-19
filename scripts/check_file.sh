#!/bin/bash
set -uo pipefail
F="/root/hello.txt"
[ -f "$F" ] && grep -q "hello from the lab" "$F" && exit 0
echo "Run: echo hello from the lab > /root/hello.txt" >&2
exit 1