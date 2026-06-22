#!/bin/bash
[ -f /usr/share/nginx/html/status.html ] && grep -q 'STATUS: ONLINE' /usr/share/nginx/html/status.html && exit 0
exit 1
