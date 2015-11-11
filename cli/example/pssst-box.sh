#!/bin/bash
set -o errexit
set -o nounset

# Show script usage
if [[ -z ${1:-} || -z ${2:-} ]]; then
    echo Usage: $(basename $0) USERNAME PASSWORD
    exit 2
fi

# Check if server is available
if [[ ! `ping -c1 api.pssst.name` ]]; then
    exit 1
fi

# Pull and log all messages
while true; do
    MESSAGE="$(pssst pull $1:$2)"

    if [[ ! -z $MESSAGE ]]; then
        echo "$MESSAGE" >> "$HOME/pssst.$1"
        notify-send Pssst "$MESSAGE"
    else
        exit 0
    fi
done