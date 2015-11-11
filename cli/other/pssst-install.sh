#!/bin/bash
set -o errexit
set -o nounset

CLI=https://raw.github.com/pssst/pssst/master/src/cli/pssst.py

# Install for root or user
if [[ $EUID == 0 ]]; then
    DIR=/usr/local/bin
else
    DIR=$HOME
fi

wget -qO $DIR/pssst -o /dev/null $CLI
chmod 755 $DIR/pssst

echo "Installed Pssst CLI into $DIR"
exit 0