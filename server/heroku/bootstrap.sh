#!/bin/bash
set -o errexit
set -o nounset

# Show script usage
if [[ -z ${1:-} ]] && [[ -z ${2:-} ]]; then
    echo Usage: $(basename $0) APP BRANCH
    exit 2
fi

HEROKU=$1
BRANCH=$2

TMP=/tmp/pssst-update-$(date +%s)

# Set user credentials
if [[ ! -f $HOME/.netrc ]]; then
    heroku login
fi

git clone https://github.com/pssst/pssst -b $BRANCH $TMP

# Create or update local repository
if [[ ! -d $HEROKU ]]; then
    mkdir -p $HEROKU/www

    cd $HEROKU

    # Create local repository
    git init
    git remote add heroku git@heroku.com:$HEROKU.git
    git pull heroku master

    # Create private and public key
    openssl genrsa -out ./id_rsa 2048
    openssl rsa -in ./id_rsa -pubout > ./www/key
else
    cd $HEROKU

    # Update to latest commit
    git pull heroku master
    git checkout master
fi

# Use only server
cp -r $TMP/server/* .
rm -rf $TMP

# Push new version
git add .
git commit -a -m "Updated app to $BRANCH"
git push heroku master

cd ..

echo "Done"
exit 0