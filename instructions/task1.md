# Task 1 - Provision and Use Tools

When this lab started, a **setup script** installed two tools (jq and tree)
and created a sample project. Confirm the setup worked by using each tool.

## 1. Capture the project layout with tree

    tree /root/project > /root/layout.txt

Then click **Check**.

<instruqt-task id="use_tree"></instruqt-task>

## 2. Extract a value with jq

    jq -r .name /root/data.json > /root/name.txt

Then click **Check**.

<instruqt-task id="use_jq"></instruqt-task>