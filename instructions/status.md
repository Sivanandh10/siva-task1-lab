# Chapter 3 - Add a Status Page

> Every mission needs a status endpoint. Create one.

## Create the status page

    nano /usr/share/nginx/html/status.html

Paste this content:

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

Save with Ctrl+X, Y, Enter. Then visit it:

    curl localhost/status.html

Click the **Live Site** tab and go to /status.html in the URL bar to see it live. Then click **Check**.

<instruqt-task id="add_status"></instruqt-task>
