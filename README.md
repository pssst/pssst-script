![Pssst](http://www.gravatar.org/avatar/2aae9030772d5b59240388522f91468f?s=96)

Pssst Script
============
Pssst is a simple and secure way to exchange information. We do not provide
services by our self, but we provide you with the tools to start your own
service. These tools build upon open-source software and use strong end-to-end
encryption.

This repository contains our maintenance and utility scripts.

Client
------
### Build
This folder contains client build scripts:

#### OS X
* `build.sh` builds an Mac OS X `APP` file of the `CLI`.

#### Windows
* `build.cmd` builds an Windows `EXE` file of the `CLI`.

### Example
This folder contains client example scripts:
* `pssst-box.sh` shows and persists the latest messages to `pssst.<username>`.
* `pssst-file-pull.py` shows how to pull a file via the derived `CLI`.
* `pssst-file-push.py` shows how to push a file via the derived `CLI`.

Server
------
### Docker
This folder contains server docker files:

#### Amazon
* `Dockerfile` is a docker container for Amazon Web Services.

#### Docker
* `Dockerfile` is a docker container based on Debian stable.

### Hoster
This folder contains server setup scripts:

#### DomainFactory
* `bootstrap.sh` starts a server instance on [JiffyBox](https://jiffybox.de).

#### Heroku
* `bootstrap.sh` starts a server instance on [Heroku](https://heroku.com).

#### Uberspace
* `update-pssst.sh` runs our endpoints on [Uberspace](https://uberspace.de).

Utility
-------
This folder contains other useful scripts:

### Linux
* `install.sh` installs the `CLI` (w/o _root_ permission).
* `make-deb.sh` creates a Debian package of the `CLI`.
* `make-iso.sh` creates a Debian minimal bootable `ISO` of the `CLI`.

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