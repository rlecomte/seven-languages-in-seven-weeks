#!/bin/bash

docker build -t rlecomte/prolog:latest .

if [ -z "$1" ]
  then
	docker run -ti rlecomte/prolog:latest
  else
	docker run -ti rlecomte/prolog:latest --query-goal "['/scripts/$1']" 
fi
