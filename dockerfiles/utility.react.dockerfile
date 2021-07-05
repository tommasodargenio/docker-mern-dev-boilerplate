###################################
# Title:            Create-React-App Utility Container Configuration
# Description:      dockerfile for utility container used to run the create-react-app command
# Author:           Tommaso D'Argenio <tom@tommasodargenio.com>
# URI:              https://github.com/tommasodargenio/docker-mern-dev-boilerplate/dockerfiles/utility.react.dockerfile
# Version:          1.0.0 
###################################
FROM node:16-alpine
# must be mapped to the same workding_dir as backend working_dir
WORKDIR /app

# entrypoint command to run
ENTRYPOINT [ "npx", "create-react-app" ]

# default argument for create-react-app in case it's not provided from command line
CMD ["my-app"]