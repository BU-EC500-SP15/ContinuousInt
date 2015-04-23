#!/bin/bash

ImageName="webapp"
hostIP=1234

#Defaults:username !requiretty

sudo docker -d &
sleep 5
sudo docker build -t=$ImageName --no-cache ./
#sudo docker build -t="ImageName" docker-sample
sudo docker run -p=\"$hostIP:80\" $ImageName 
