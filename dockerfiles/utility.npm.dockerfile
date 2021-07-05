###################################
# Title:            NPM Utility Container Configuration
# Description:      dockerfile for NPM utility container, used to run npm init, npm install, etc.
# Author:           Tommaso D'Argenio <tom@tommasodargenio.com>
# URI:              https://github.com/tommasodargenio/docker-mern-dev-boilerplate/dockerfiles/utility.npm.dockerfile
# Version:          1.0.0 
###################################
FROM node:16-alpine
# must be mapped to the same workding_dir as backend working_dir
WORKDIR /app
# entrypoint command to run
ENTRYPOINT [ "npm" ]