#!/bin/bash

# install requirements
pip install supervisor==3.3.1
pip install -r requirements.txt --extra-index-url https://pypi.zhengyitech.com/simple/

# run supervisor, -n means nodaemon=true
../venv/bin/supervisord -n -c etc/supervisor.conf
