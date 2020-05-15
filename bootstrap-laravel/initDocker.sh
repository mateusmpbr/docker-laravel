#!/bin/bash
export USR=$(whoami)
export UID=$(id -u)
stop="docker stop $(docker ps -aq)"
eval $stop
cmd="docker-compose -f 'docker-compose.yml' up -d"
eval $cmd
