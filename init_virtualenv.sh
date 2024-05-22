#!/bin/bash
set -e

ROLE=${1:-local}
VIRTUAL_ENV=${2:-.env}

cd "$(dirname "$0")"

CACHE_DIR=/tmp/django_ajax_select/pip
REL_DIR=./

echo "[$(date)] Removing existing virtualenv if it exists."
[ -d $REL_DIR$VIRTUAL_ENV ] && rm -Rf $REL_DIR$VIRTUAL_ENV

echo "[$(date)] Creating virtual environment with Python 3.12 (requires python3.12-venv package on Ubuntu)"
python3.12 -m venv $REL_DIR$VIRTUAL_ENV

echo "[$(date)] Activating virtual environment."
. $REL_DIR$VIRTUAL_ENV/bin/activate

echo "[$(date)] Installing pip requirements."
pip install --cache-dir $CACHE_DIR -r requirements.txt -r requirements-test.txt

echo "[$(date)] Installing git pre-commit hooks."
pre-commit install
