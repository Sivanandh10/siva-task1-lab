# Chapter 2 - Customize the Site

> The Mission Control homepage is waiting for an agent. Identify yourself.

## Edit the homepage

Open the file in a text editor:

    nano /usr/share/nginx/html/index.html

Find the line that says **AWAITING AGENT** and add a new line with your name:

    <p>Agent: Siva</p>

Save with Ctrl+X, Y, Enter. Then refresh the **Live Site** tab to see your change.

Confirm it worked:

    curl localhost | grep Agent

Then click **Check**.

<instruqt-task id="edit_homepage"></instruqt-task>
