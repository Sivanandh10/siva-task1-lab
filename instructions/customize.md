# Chapter 2 - Customize the Site

> The Mission Control homepage is waiting for an agent. Identify yourself.

## Edit the homepage

The nginx image does not include nano. Use cat to write the file directly:

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

Confirm it worked:

    curl localhost | grep Agent

Then click **Check**.

<instruqt-task id="edit_homepage"></instruqt-task>
