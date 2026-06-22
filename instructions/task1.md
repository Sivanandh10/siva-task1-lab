# Task 1 - Setup and Verify

A **setup script** ran when the lab started. It created a sample project
at /root/project using base tools only - no internet needed.

## 1. Confirm the setup completed

See what the setup created:

    ls -R /root/project
    cat /root/project/info.txt

You should see the files and "name: instruqt-lab". Then click **Check**.

<instruqt-task id="verify_setup"></instruqt-task>

## 2. Read the project name

    grep name /root/project/info.txt > /root/name.txt

Then click **Check**.

<instruqt-task id="find_name"></instruqt-task>