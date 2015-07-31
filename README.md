Pssst Scripts
=============
This repository contains the official Pssst maintenance and helper scripts.

Server
------
### Amazon
* `Dockerfile` - Docker container for Amazon Web Services

### Docker
* `Dockerfile` - Docker container based on Debian

### Heroku
* `update-pssst.sh` - Updates a server instance on https://heroku.com

### Jiffy Box
* `bootstrap.sh` - Creates a server instance on https://jiffybox.de

### Uberspace
* `update-pssst.sh` - Updates a server instance on https://uberspace.de

Client
------
### Debian
* `install.sh` - Installs the `CLI` (w/o _root_ permission)
* `makedeb.sh` - Creates a Debian package of the `CLI`
* `makeiso.sh` - Creates a Debian minimal `ISO` image with user keys and `CLI`

### OS X
* `makeapp.sh` - Creates an OS X `APP` file of the `CLI`

### Windows
* `makebin.cmd` - Creates a Windows `PE` file of the `CLI`

Examples
--------
### Shell
* `pssst-pull.py` - Example script derived from the `CLI` for file pulling
* `pssst-push.py` - Example script derived from the `CLI` for file pushing
* `pssst-box.sh`  - Displays and persists the latest messages from a box
