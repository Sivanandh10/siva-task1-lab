#!/bin/bash
mkdir -p /usr/share/nginx/html
cat > /usr/share/nginx/html/index.html << 'HTMLEOF'
<!DOCTYPE html>
<html>
<head><title>Mission Control</title>
<style>body{background:#0a0a0a;color:#00ff88;font-family:monospace;padding:40px;}
h1{font-size:2.5em;border-bottom:2px solid #00ff88;padding-bottom:10px;}
p{color:#ccc;font-size:1.1em;}</style>
</head>
<body>
<h1>MISSION CONTROL</h1>
<p>Status: AWAITING AGENT</p>
<p>Customize this page to complete your mission.</p>
</body></html>
HTMLEOF
nginx -g 'daemon off;' &
sleep 2
