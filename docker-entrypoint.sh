#!/bin/bash

sed 's/JENKINS_HOST/'"$JENKINS_HOST:$JENKINS_PORT"'/g' /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
exec "$@"
nginx -g 'daemon off;'