# Chapter 2 - Customize the Homepage

> The server is live. Now make it yours.

---

## Step 1 — View the current homepage

In the **Terminal**, run:

    curl localhost

You will see the raw HTML of the current page. Then click the **HTML Editor** tab — find index.html in the file tree and click it to see the file with syntax highlighting.

---

## Step 2 — Edit the homepage

In the **Terminal**, overwrite the homepage with your own version:

    cat > /usr/share/nginx/html/index.html << 'EOF'
    <!DOCTYPE html>
    <html>
    <head><title>Mission Control</title>
    <style>body{background:#0a0a0a;color:#00ff88;font-family:monospace;padding:40px;}
    h1{font-size:2.5em;border-bottom:2px solid #00ff88;padding-bottom:10px;}
    p{color:#ccc;font-size:1.1em;}</style>
    </head>
    <body>
    <h1>MISSION CONTROL</h1>
    <p>Status: ACTIVE</p>
    <p>Agent: Siva</p>
    </body></html>
    EOF

---

## Step 3 — Verify your change

Confirm nginx is serving your new content:

    curl localhost | grep Agent

You should see <p>Agent: Siva</p>. Also click the **HTML Editor** tab and refresh — your updated index.html will show the new content.

Then click **Check**.

<instruqt-task id="edit_homepage"></instruqt-task>
