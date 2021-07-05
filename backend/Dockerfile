###################################
# Title:            Backend Container Configuration
# Description:      dockerfile for Node.JS backend environment
# Author:           Tommaso D'Argenio <tom@tommasodargenio.com>
# URI:              https://github.com/tommasodargenio/docker-mern-dev-boilerplate/backend/Dockerfile
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

# expose port 80 from container into host, so we can connect to this via port 80
# NOTE: this will need to be published explicitly while running docker run with "-p 80:80", or in the docker-compose file with ports: - "80:80"
EXPOSE 80

# if our node.js app needs to write in any folder that is also a volume, we need to assign
# ownership of that folder to the user:group node:node
# this is because the container will create the named or anonymous folder as owned by root
# this problem does not happen if the folder is a bind mount to the host filesystem and will not be required
RUN chown -R node:node /app/logs

# setup two environment variables that contains the mongoDB username and password
# this will be accessible from within the node.js code as ${process.env.MONGODB_USERNAME} and ${process.env.MONGODB_PASSWORD}
# use dummy username and password here, then specify the real one when running docker run with -e MONGODB_USERNAME=whatever or in you docker-compose.yaml env_file or environemnt section
ENV MONGODB_USERNAME = root
ENV MONGODB_PASSWORD = secret

# start the node app - start script is defined in package.json where we'll use nodemon
CMD ["npm", "start"]