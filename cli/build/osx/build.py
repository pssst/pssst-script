#!/usr/bin/env python
import setuptools
import sys


try:
    from pssst import __version__
except ImportError:
    sys.exit("Please install the Pssst CLI (https://pssst.name)")


try:
    import py2app
except ImportError:
    sys.exit("Requires py2app (https://pythonhosted.org/py2app)")


setuptools.setup(
    app=[
        "pssst.py"
    ],
    options={
        "py2app": {
            "argv_emulation": True,
            "optimize": 1,
            "includes": [
                "requests"
            ],
            "packages": [
                "requests"
            ],
            "plist": {
                "CFBundleName": "Pssst",
                "CFBundleIdentifier": "name.pssst.cli",
                "CFBundleExecutable": "pssst.py",
                "CFBundleVersion": __version__
            }
        }
    },
    setup_requires=[
        "py2app"
    ]
)
