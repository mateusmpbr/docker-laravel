#!/bin/bash
export USR=$(whoami)
export UID=$(id -u)
cmd="docker-compose -f 'docker-compose.yml' build app"
eval $cmd
cmd="composer install && npm install && npm run dev"
eval $cmd