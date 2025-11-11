#!/bin/bash

docker_status=$(systemctl is-active docker)
docker_version=$(docker --version | awk '{print $3}' | tr -d ',')
current_date=$(date)

echo -e "Docker_status=$docker_status\nDocker_version=$docker_version" | mail -s "test email" gunaachar003@gmail.com

