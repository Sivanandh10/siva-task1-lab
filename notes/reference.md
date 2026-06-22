# Mission Control - Reference

## nginx file locations

| File | Purpose |
|------|---------|
| /usr/share/nginx/html/index.html | Main homepage |
| /usr/share/nginx/html/status.html | Status page |
| /etc/nginx/nginx.conf | nginx config |

## Useful commands

    curl localhost                      # view homepage
    curl localhost/status.html         # view status page
    curl -I localhost                   # view HTTP headers
    nginx -s reload                    # reload nginx config

## HTML quick reference

    <h1>Heading</h1>                   # Large heading
    <p>Paragraph</p>                   # Paragraph text
    <strong>Bold</strong>              # Bold text
    <a href='/'>Link</a>               # Hyperlink

## Editing files

Use the **HTML Editor** tab to browse and edit files directly,
or use cat in the Terminal to write files:

    cat > /path/to/file << 'EOF'
    your content here
    EOF
