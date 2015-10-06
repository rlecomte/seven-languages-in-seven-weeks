#!/bin/bash

docker build -t rlecomte/prolog:latest .

if [ -z "$1" ]
  then
	docker run -ti rlecomte/prolog:latest prolog
  else
	docker run -ti rlecomte/prolog:latest prolog /scripts/$1
fi
