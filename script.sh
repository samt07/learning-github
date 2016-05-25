#!/bin/bash

WORKDIR=`pwd`

if [ ! -d $WORKDIR/ve ]; then
    python3 -m venv ve
    echo "Virtualenv created."
    source ve/bin/activate
    pip install django
    pip install gunicorn
fi
exit

#if [ ! -f "$WORKDIR/ve/updated" -o $WORKDIR/requirements.pip -nt $WORKDIR/ve/updated ]; then
 #   pip install django $WORKDIR/ve
  #  touch $WORKDIR/ve/updated
   # echo "Requirements installed."
#fi
