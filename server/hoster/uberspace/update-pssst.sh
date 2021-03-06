#!/bin/bash
set -o errexit
set -o nounset

SCRIPT=https://raw.github.com/pssst/pssst-script/master/server/hoster/uberspace/update-pssst.sh

# Show script usage
if [[ -z ${1:-} ]]; then
    echo "Usage: $(basename $0) BRANCH"
    exit 2
fi

# Update script from source
if [[ -z ${2:-} ]]; then
    echo "Updating script..."
    wget -qO $0 $SCRIPT
    chmod +x $0
    $0 $1 run
    exit 0
fi

BRANCH=$1
CONFIG=$1
STATUS=$2

if [ "$BRANCH" = "master" ]; then
    ENDPOINT=api
else
    ENDPOINT=dev
fi

RUN=$HOME/run/pssst/$ENDPOINT

CFG=$HOME/etc/pssst
ETC=$HOME/etc/run-pssst.$ENDPOINT
SVC=$HOME/service/pssst.$ENDPOINT

if [[ ! -d $CFG/$CONFIG ]]; then
    CONFIG=default
fi

echo "Checking out $ENDPOINT (Branch $BRANCH) in $RUN..."

# Stop current service
if [[ -d $SVC ]]; then
    svc -dx $SVC
    sleep 3
fi

# Clean up
rm -rf $SVC
rm -rf $ETC
rm -rf $RUN

git clone https://github.com/pssst/pssst.git -b $BRANCH $RUN/tmp

# Use only server
mv $RUN/tmp/src/server/* $RUN/
rm -rf $RUN/tmp
mkdir $RUN/www

# Install modules and config
cd $RUN && npm install
cp $CFG/$CONFIG/* .
mv id_rsa.pub www/key

# Start new service
uberspace-setup-service pssst.$ENDPOINT node $RUN/index.js

echo "Done"
exit 0
