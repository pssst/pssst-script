#!/usr/bin/env python
"""
WARNING: This code is only a basic example and not fully tested yet.
"""
import base64
import io
import json
import os
import sys

from getpass import getpass


try:
    from pssst import Pssst
except ImportError:
    sys.exit("Please install the Pssst CLI (https://pssst.name)")


def main(script, username=None, receiver=None, filename=None):
    """
    Usage: %s USERNAME RECEIVER FILENAME
    """
    script = os.path.basename(script)

    if not username:
        return main.__doc__.strip() % script

    try:
        name = Pssst.Name(username)

        filedata = io.open(filename, "rb").read()

        pssst = Pssst(name.user, name.password or getpass())
        pssst.push([receiver], json.dumps({
            "filename": os.path.basename(filename),
            "filedata": base64.b64encode(filedata).decode("ascii")
        }))

        print("Pushed file '%s'" % filename)

    except Exception as ex:
        return "%s error: %s" % (script, ex)


if __name__ == "__main__":
    sys.exit(main(*sys.argv))
