#!/bin/bash
###################################
# Title:            Start Bash Script
# Description:      bash script to start the development environment with only needed containers (it will only run frontend, backend and mongodb)
# Author:           Tommaso D'Argenio <tom@tommasodargenio.com>
# URI:              https://github.com/tommasodargenio/docker-mern-dev-boilerplate/mynpm.sh
# Version:          1.0.0 
###################################

# start the container system - Frontend depends on mongodb and backend which will be spun-up automatically
# the --build flag ensure that if any changes occurred to the docker files, the images will be re-build
# the -d flag runs the container in detached mode, so the control is back to the prompt after running this command
docker-compose up -d --build frontend