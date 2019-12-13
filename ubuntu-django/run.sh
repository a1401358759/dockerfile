#!/bin/bash

# install uwsgi and requirements
pip3 install uwsgi==2.0.12
pip3 install -r requirements.txt

#TODO git pull

# runserver
../venv/bin/uwsgi -i etc/uwsgi.ini
