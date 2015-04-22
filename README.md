Pssst Scripts
=============
This repository contains the official Pssst maintenance and helper scripts.

Amazon
------
* `Dockerfile` - Docker container for Amazon Web Services

Debian
------
* `install.sh` - Installs the CLI (w/o root permission)
* `makedeb.sh` - Creates a Debian package of the CLI
* `makeiso.sh` - Creates a Debian minimal ISO image with user keys and CLI

Docker
------
* `Dockerfile` - Docker container based on Debian

Example
-------
* `pssst-pull.py` - Example script derived from the CLI for file pulling
* `pssst-push.py` - Example script derived from the CLI for file pushing
* `pssst-box.sh`  - Displays and persists the latest messages from a box

Heroku
------
* `update-pssst.sh` - Starts a server instance on https://heroku.com

Uberspace
---------
* `update-pssst.sh` - Starts a server instance on https://uberspace.de

Windows
-------
* `makebin.cmd` - Creates a Windows PE file of the CLI
