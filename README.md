![Pssst](http://www.gravatar.org/avatar/2aae9030772d5b59240388522f91468f?s=96)

Pssst Script
============
> PLEASE NOTE, THAT THIS PROJECT IS NO LONGER ACTIVELY MAINTAINED

Pssst is a simple and secure way to exchange information. We do not provide
services by our self, but we provide you with the tools to start your own
service. These tools build upon open-source software and use strong end-to-end
encryption.

This repository contains our maintenance and utility scripts.

CLI
---
### Build
This folder contains CLI build scripts:

#### Debian
* `build.sh` builds an Debian `DEB` package of the `CLI`.

#### OS X
* `build.sh` builds an Mac OS X `APP` file of the `CLI`.

#### Windows
* `build.cmd` builds an Windows `EXE` file of the `CLI`.

### Example
This folder contains CLI example scripts:
* `p.sh` shortcut script for pulling/pushing messages (uses `~/.id_pssst`).
* `pssst-box.sh` shows and persists the latest messages to `pssst.<username>`.
* `pssst-file-pull.py` shows how to pull a file via the derived `CLI`.
* `pssst-file-push.py` shows how to push a file via the derived `CLI`.

### Other
This folder contains other useful scripts:
* `pssst-install.sh` installs the `CLI` (w/o _root_ permission).
* `pssst-iso.sh` creates a bootable `ISO` image of the `CLI`.

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

### Other
This folder contains other useful scripts:
* `shell.js` server shell for manipulating database entities directly.

License
-------
Released under the terms of the [GPLv3](LICENSE) license.

----------
Created by
[Christian](https://github.com/7-bit) & [Christian](https://github.com/cuhsat)
just for the joy of it.
