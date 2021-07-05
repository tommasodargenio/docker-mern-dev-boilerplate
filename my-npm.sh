#!/bin/bash
###################################
# Title:            MY-NPM Bash Script
# Description:      bash script to run the npm utility container only - not needed, you can run the command manually if you want
# Author:           Tommaso D'Argenio <tom@tommasodargenio.com>
# URI:              https://github.com/tommasodargenio/docker-mern-dev-boilerplate/my-npm.sh
# Version:          1.0.0 
###################################
helpFunction() {
    echo ""
    echo "Usage: $0 command_to_run"
    echo -e "\tspecify the command to run with npm"
    echo -e "\texample: $0 init - will run npm init and ask the questions to build the app package.json"
    exit 1
}

if [ -z "$1" ] 
then
    echo "Parameter missing";
    helpFunction
fi

docker-compose run --rm npm $1