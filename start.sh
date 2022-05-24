#!/bin/bash
cd /edx/app/edxapp/edx-platform
sudo -H -u edxapp bash
source ../edxapp_env
paver update_assets --settings=production
exit
sudo /edx/bin/supervisorctl restart all
