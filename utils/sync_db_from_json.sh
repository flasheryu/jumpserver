#!/usr/bin/env bash
# -*- encoding UTF-8 -*-
# Author: Johny

python ../apps/manage.py migrate --run-syncdb

python ../apps/manage.py shell << EOF
from django.contrib.contenttypes.models import ContentType
ContentType.objects.all().delete()
quit()
EOF


#python ../apps/manage.py dumpdata > ../apps/fixtures/init.json

python ../apps/manage.py loaddata ../apps/datadump.json