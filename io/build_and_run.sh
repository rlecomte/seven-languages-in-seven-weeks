#!/bin/bash

docker build -t rlecomte/iolang:latest .
sudo docker run -i rlecomte/iolang:latest io /scripts/$1
