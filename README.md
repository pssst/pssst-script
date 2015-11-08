![Pssst](http://www.gravatar.org/avatar/2aae9030772d5b59240388522f91468f?s=96)

Pssst Script
============
Pssst is a simple and secure way to exchange information. We do not provide
services by our self, but we provide you with the tools to start your own
service. These tools build upon open-source software and use strong end-to-end
encryption.

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

License
-------
Copyright (C) 2013-2015  Christian & Christian  <hello@pssst.name>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

----------
Created by
[Christian](https://github.com/7-bit) & [Christian](https://github.com/cuhsat)
just for the joy of it.
