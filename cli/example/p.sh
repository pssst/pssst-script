#!/bin/bash
set -o errexit
set -o nounset

ID=$HOME/.id_pssst

# Check if user id exists
if [[ ! -f $ID ]]; then
    echo "User ID not found"
    exit 1
fi

USER="$(cat $ID)"

if [[ -z ${1:-} || -z ${2:-} ]]; then
    pssst pull $USER
else
    pssst push $USER $1 $2
fi
exit 0