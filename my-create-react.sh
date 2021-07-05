#!/bin/bash
###################################
# Title:            MY-CREATE-REACT Bash Script
# Description:      bash script to run the react utility container only - not needed, you can run the command manually if you want
# Author:           Tommaso D'Argenio <tom@tommasodargenio.com>
# URI:              https://github.com/tommasodargenio/docker-mern-dev-boilerplate/my-create-react.sh
# Version:          1.0.0 
###################################
helpFunction() {
    echo ""
    echo "Usage: $0 app_name [minimal]"
    echo -e "\tspecify the name of the app to create"
    echo -e "\toptionally use the flag minimal to use a minimal react template"
    echo -e "\texample: $0 blog - will run npx create-react-app blog and ask the questions to build the app package.json"
    exit 1
}

if [ -z "$1" ] 
then
    echo "Parameter missing";
    helpFunction
fi

if [ -z "$2" ]
then
    # run the create-react-app command from the utility container
    docker-compose run --rm -u 1000:1000 react $1
elif [ $2 = "minimal" ]
then
    # run the create-react-app command from the utility container using the minimal template
    docker-compose run --rm -u 1000:1000 react $1 --template minimal
else
    echo "Only the keyword minimal is accepted as second parameter";
    helpFunction
fi
# the app will be created in ./frontent/app-name($1), move everything up to the frontend folder
mv ./frontend/$1/* ./frontend/
# move the .gitignore file as well to the frontend folder
mv ./frontend/$1/.gitignore ./frontend/
# remove the folder where the app was originally created
rm -r ./frontend/$1