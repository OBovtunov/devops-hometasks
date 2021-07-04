#!/bin/bash
docker build -t hometask-image .
docker run --rm -t -d -p 8081:80 --name www2 hometask-image
docker cp index.html www2:/var/www/html