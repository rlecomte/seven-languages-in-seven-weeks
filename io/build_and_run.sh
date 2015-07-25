#!/bin/bash

docker build -t rlecomte/iolang:latest .

if [ -z "$1" ]
  then
	sudo docker run -i rlecomte/iolang:latest io
  else
	sudo docker run -i rlecomte/iolang:latest io /scripts/$1
fi
