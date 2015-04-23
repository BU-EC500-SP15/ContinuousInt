#!/bin/bash

ImageName="webapp"
hostIP=8080

sudo docker -d &
sleep 5000
sudo docker build -t=$ImageName docker-sample
#sudo docker build -t="ImageName" docker-sample
sudo docker run -p=\"$hostIP:80\" $ImageName &