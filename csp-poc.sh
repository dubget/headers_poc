#!/bin/bash
docker container rm --force csp-poc
docker run --rm --name csp-poc -d -p 8000:80 nginx
docker cp ./html/. csp-poc:/usr/share/nginx/html/
docker cp ./nginx.conf csp-poc:/etc/nginx/nginx.conf
docker exec csp-poc nginx -s reload

