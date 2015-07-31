#!/bin/bash
set -o errexit
set -o nounset

URL=https://raw.github.com/pssst/pssst/master/app/cli/pssst.py

if [[ $EUID == 0 ]]; then
    DIR=/usr/local/bin
else
    DIR=$HOME
fi

echo "Installing Pssst into $DIR..."

wget -qO $DIR/pssst -o /dev/null $URL
chmod 755 $DIR/pssst

exit 0