#!/bin/bash
set -e

# create and use virtualenv
VENV_DIR="/opt/django/venv"
VENV_ACTIVATE_PATH="/opt/django/venv/bin/activate"
if [ ! -d "$VENV_ACTIVATE_PATH" ]; then
  virtualenv $VENV_DIR --python=python3.6
fi
source $VENV_ACTIVATE_PATH

exec "$@"
