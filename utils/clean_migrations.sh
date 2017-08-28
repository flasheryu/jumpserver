#!/bin/bash
#

#for app in users assets perms audits ops applications;do
for app in applications, assets, audits, auth, captcha, contenttypes, ops, perms, sessions, users;do
    rm -f ../apps/$app/migrations/00*
done
