#!/bin/bash
VIRTUAL_ENV=${VIRTUAL_ENV:-.env}
$VIRTUAL_ENV/bin/pylint --version
$VIRTUAL_ENV/bin/pylint --rcfile=pylint.rc ajax_select
