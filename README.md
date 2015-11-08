Pssst Script
============
This repository contains our maintenance and utility scripts.

Binary
------
### OS X
* `build.sh`  - Builds an Mac OS X `APP` file of the `CLI`

### Windows
* `build.cmd` - Builds an Windows `EXE` file of the `CLI`

Debian
------
* `install.sh`  - Installs the `CLI` (w/o _root_ permission)
* `make-deb.sh` - Creates a Debian package of the `CLI`
* `make-iso.sh` - Creates a Debian minimal bootable `ISO` of the `CLI`

Demo
----
* `pssst-box.sh`       - Displays and logs the latest messages
* `pssst-file-pull.py` - Example script about how to pull a file via the `CLI`
* `pssst-file-push.py` - Example script about how to push a file via the `CLI`

Docker
------
### Amazon
* `Dockerfile` - Docker container for Amazon Web Services

### Docker
* `Dockerfile` - Docker container based on Debian stable

Server
------
### DomainFactory
* `bootstrap.sh` - Starts a server instance on [JiffyBox](https://jiffybox.de)

### Heroku
* `bootstrap.sh` - Starts a server instance on [Heroku](https://heroku.com)

### Uberspace
* `update-pssst.sh` - Runs our endpoints on [Uberspace](https://uberspace.de)
