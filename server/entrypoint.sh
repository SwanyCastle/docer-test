#!/bin/bash

python manage.py collectstatic
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:80
# exec gunicorn --bind 0.0.0.0:8000 config.wsgi:application
