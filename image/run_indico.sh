#!/bin/bash

# This should run only once at setup
echo 'Preparing DB...'
indico db prepare

echo 'Starting Indico...'
uwsgi /opt/indico/uwsgi.ini