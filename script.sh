#!/bin/bash

##This script is to be run from the workdir folder
WORKDIR=`pwd`
APPDIR=minimal-django
# This will be input argument later $1.

if [ ! -d $WORKDIR/$APPDIR ]; then
git clone https://github.com/rnevius/minimal-django.git
fi

if [ ! -d $WORKDIR/ve ]; then
    python3 -m venv ve
    echo "Virtualenv created."
    source ve/bin/activate
    pip install -r requirements.txt
fi

exit
