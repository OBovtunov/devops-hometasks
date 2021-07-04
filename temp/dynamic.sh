#!/bin/bash
docker build -t hometask-image .
docker run -t -d -p 8080:80 --name www hometask-image
