#!/bin/sh
gunicorn --chdir /app --worker-tmp-dir /dev/shm --config gunicorn_config.py solve_api:app
