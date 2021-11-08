#!/bin/sh

set -e

openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/localhost.key -out /etc/nginx/localhost.pem -days 30 -nodes -subj '/CN=localhost'
