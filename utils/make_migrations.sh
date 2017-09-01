#!/bin/bash
#

python ../apps/manage.py makemigrations

#python ../apps/manage.py migrate --run-syncdb

#python ../apps/manage.py migrate

python ../apps/manage.py migrate --fake
