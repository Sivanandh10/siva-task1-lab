# Chapter 3 - Add a Status Page

> Every mission needs a status endpoint. Create one.

## Create the status page

    cat > /usr/share/nginx/html/status.html << 'EOF'
    <!DOCTYPE html>
    <html>
    <head><title>Status</title>
    <style>body{background:#0a0a0a;color:#00ff88;font-family:monospace;padding:40px;}</style>
    </head>
    <body>
    <h1>STATUS: ONLINE</h1>
    <p>All systems operational.</p>
    </body>
    </html>
    EOF

Confirm it:

    curl localhost/status.html

Then click **Check**.

<instruqt-task id="add_status"></instruqt-task>
