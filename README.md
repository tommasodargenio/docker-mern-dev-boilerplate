# Dockerized MERN stack developer boilerplate
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![Uses-Docker](https://img.shields.io/badge/Uses-Docker%20Desktop%20WSL%202-orange)](https://docs.docker.com/docker-for-windows/wsl/)

## Description

This is a boilerplate to completely create and develop your MERN stack applications, you only require to have Docker installed on your machine and nothing else. All necessary dependencies, libraries and software will be downloaded and installed during the build process. 

I've developed and tested this template only on Windows 10 with WSL2 and Docker Desktop for WSL2, testers for other platforms are welcome to try and adjust the template accordingly.

You can create a node.JS backend app from scratch using the NPM utility container, and a REACT.JS app using the react utility container. This will be using the standard basic boilerplates for either (you can also specify a minimal template for the REACT.JS app)

Alternatively you can just copy your existing projects in the appropriate folders for backend and frontend. The docker containers will use bind mounts so you can live code your source and verify changes in real-time.

*This template is for development only, **DO NOT USE** in production*

### Features
 * Boilerplate to rapidly create a MERN stack system without installing any software (but Docker)
 * Create boilerplated apps with the utility containers or use your own
 * Bash scripts included to simplify usage
 * Live code with realtime updates
 * Uses Node-16 Alpine for the utility containers to minimize space required

### Requirements
 * [Windows WSL 2](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
 * [Docker Desktop for WSL 2](https://docs.docker.com/docker-for-windows/wsl/)
 * This repository's [code](https://github.com/tommasodargenio/docker-mern-dev-boilerplate/releases/latest) unzipped in a folder within your home directory on the WSL2 system
   **(Do not use this from the Windows filesystem, all shell commands must run within a WSL2 bash terminal and not Windows terminal or PowerShell)**

### Usage
 * **Create or copy the backend app**
   You can either create the Node.JS backend app via the provided script (you only need to this once), or copy your own app in the ./backend folder. **Please do not remove the following files: *.dockerignore* and *Dockerfile***

   To create the app, from a shell in your WSL2 system type in
   ```$ ./my-npm.sh init```
   This will execute the wizard guiding you through the creation of the app using the standard node boilerplate
   
 * **Create or copy the frontend app**
   You can either create the REAC.JS frontend app via the provided script (you only need to do this once), or copy your existing react app in the frontend directory, the container will use npm start to spun up the frontend, so make sure this is correctly configured in your package.json
   **Please do not remove the following files: *.dockerignore* and *Dockerfile***

   To create the app, from a shell in your WSL2 system type in
   ```$ ./my-create-react.sh app_name```
   Once prompted confirm by pressing Enter to start the creation process. *(beware we use npx create-react-app as such this operation will take sometime since all dependencies will be downloaded and installed in the container)*
   
   You can also use a minimal template to speed-up the creation time a bit, and if you are more comfortable working with a less bloated starting app. To do so use the following script
   ```$ ./my-create-react.sh app_name minimal```
  
   
 * **Start the containers**
   After all pre-requisites have been setup and installed you can start the containers. 
   To start the whole system, from a shell in your WSL2 system type in
   ```$ ./start.sh```

   To stop all containers use, from a shell in your WSL2 system type in
   ```$ docker-compose down```



### Help and Support
I've tested this template many times and I use it regularly, unfortunately I can't guarantee that it'll work 100% of the time on any Windows system or any other platform. Would you have any issue ore request, please open a [new ticket](https://github.com/tommasodargenio/docker-mern-dev-boilerplate/issues/new/choose) on the repository issue's section.

Support is provided on best-effort basis, please upload screenshots to show the issue, and any relevant information to help expedite troubleshooting and resolution.


### Disclaimer
This template and its code is provided *as-is* without warranty of any kind, either express or implied, including any implied warranties or fitness for a particular purpose, merchantibility, or non-infringement.

*This template is for development only, **DO NOT USE** in production*

### Copyright notice
Copyright &copy; 2021 by Tommaso D'Argenio
Released under [BSD-3-Clause](https://opensource.org/licenses/BSD-3-Clause) open source license
