#!/bin/bash
set -uo pipefail
if [ -d /root/project ] && [ -f /root/project/info.txt ] && grep -q "name: instruqt-lab" /root/project/info.txt; then
  exit 0
fi
echo "Setup not detected: /root/project was not provisioned." >&2
exit 1