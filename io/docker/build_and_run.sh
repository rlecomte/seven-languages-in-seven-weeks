#!/bin/bash

docker build -t rlecomte/iolang:latest .

docker run rlecomte/iolang:latest
