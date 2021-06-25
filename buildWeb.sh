#!/bin/bash

./scripts/run.sh

docker exec ragu /mnt/scripts/build.sh

sudo docker stop ragu

sudo docker rm ragu

