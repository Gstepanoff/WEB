#!/bin/bash
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo rm -r /etc/gunicorn.d/*
#sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test
sudo ln -sf /home/box/web/etc/django.qa.cofig /etc/gunicorn.d/django.qa.cofig
#sudo gunicorn -c /home/box/web/etc/gunicorn-wsgi.conf hello:wsgi_application
#sudo gunicorn -c /home/box/web/etc/django.qa.cofig ask.wsgi:application
sudo /etc/init.d/gunicorn restart
