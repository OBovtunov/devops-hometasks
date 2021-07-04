#!/bin/bash
docker build -t hometask-image .
docker run -t -d -p 8081:80 --name www hometask-image
docker cp index.html www /var/www/html