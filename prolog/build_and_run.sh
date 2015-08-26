#!/bin/bash

docker build -t rlecomte/prolog:latest .

if [ -z "$1" ]
  then
	sudo docker run -i rlecomte/prolog:latest prolog
  else
	sudo docker run -i rlecomte/prolog:latest prolog /scripts/$1
fi
