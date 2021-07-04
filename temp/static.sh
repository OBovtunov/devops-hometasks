#!/bin/bash
docker build -t hometask-image .
docker run --rm -d -p 8081:80 -v ./index.html:/var/www/html/ hometask-image