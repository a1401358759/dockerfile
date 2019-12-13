#!/bin/bash

# install requirements
pip3 install supervisor==4.1.0
pip3 install -r requirements.txt

# run supervisor, -n means nodaemon=true
../venv/bin/supervisord -n -c etc/supervisor.conf
