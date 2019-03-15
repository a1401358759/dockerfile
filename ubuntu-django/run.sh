#!/bin/bash

# install uwsgi and requirements
pip install uwsgi==2.0.12
pip install -r requirements.txt --extra-index-url https://pypi.zhengyitech.com/simple/

#TODO git pull

# runserver
../venv/bin/uwsgi -i etc/uwsgi.ini
