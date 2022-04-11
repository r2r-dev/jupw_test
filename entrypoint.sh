#!/usr/bin/env bash
export USER=jovyan
export SHELL=bash
. /home/jovyan/.profile
exec "$@" --config /home/jovyan/.jupyter/jupyter_lab_config.py
