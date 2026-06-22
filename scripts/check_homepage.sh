#!/bin/bash
grep -q 'Agent: Siva' /usr/share/nginx/html/index.html && exit 0
exit 1
