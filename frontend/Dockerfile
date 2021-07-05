###################################
# Title:            Frontend Container Configuration
# Description:      dockerfile for REACT.JS frontend environment
# Author:           Tommaso D'Argenio <tom@tommasodargenio.com>
# URI:              https://github.com/tommasodargenio/docker-mern-dev-boilerplate/dockerfiles/frontend.dockerfile
# Version:          1.0.0 
###################################
# download the latest node image from docker-hub
FROM node

# set the working directory in the container as /app
WORKDIR /app

# copy the package.json file from host to the container /app (since we used /app as workdir we don't need to specify explicitly again)
COPY package.json .

# install all dependendies as listed in package.json (this runs in the container and not on the host)
RUN npm install

# copy all files and directories from the local directory on the host (this is where the dockerfile is) into the container /app (workdir)
COPY . .

# expose port 3000 from container into host, so we can connect to this via port 3000
# NOTE: this will need to be published explicitly while running docker run with "-p 3000:3000", or in the docker-compose file with ports: - "3000:3000"
EXPOSE 3000

# start the node app - start script is defined in package.json where we'll use react-scripts start
CMD ["npm", "start"]