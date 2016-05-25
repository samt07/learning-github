#!/bin/bash

#This script is to be run from the appdir(minimal-django) folder.

source ../ve/bin/activate
gunicorn -b unix:gunicorn.sock minimal

