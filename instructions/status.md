# Chapter 3 - Add a Status Page

> Every production server needs a health endpoint. Build one.

---

## Step 1 — Create the status page

In the **Terminal**:

    cat > /usr/share/nginx/html/status.html << 'EOF'
    <!DOCTYPE html>
    <html>
    <head><title>Status</title>
    <style>body{background:#0a0a0a;color:#00ff88;font-family:monospace;padding:40px;}
    h1{font-size:2em;border-bottom:2px solid #00ff88;padding-bottom:10px;}
    p{color:#ccc;}</style>
    </head>
    <body>
    <h1>STATUS: ONLINE</h1>
    <p>All systems operational.</p>
    <p>Server: nginx/1.25</p>
    </body>
    </html>
    EOF

---

## Step 2 — Verify the status page

    curl localhost/status.html

You should see STATUS: ONLINE in the response. Click the **HTML Editor** tab — status.html now appears in the file tree alongside index.html.

---

## Step 3 — Check HTTP headers

See what nginx sends back:

    curl -I localhost/status.html

You will see the HTTP response headers including Content-Type, Server, and 200 OK.

Then click **Check** to complete the lab.

<instruqt-task id="add_status"></instruqt-task>
