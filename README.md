# DJANGO-O-DOCKER
5 MINT TEMPLATE INSTALLATION. A template for running Python Django Over A Docker Container running on an Nginx proxy server with MySql db and phpmyadmin support.

## Supported OS
* Linux
* Windows
* MacOS

## Features
* Full Django Installation with any hassle
* MySQL db integrated and configured to be used inside project
* phpmyadmin support accessing the MySQL Database
* Takes less than 5 minutes
* Fully supported VS Code remote container development
* Fully supported VS Code debugger (Inside remote container) (With test config files)
* .env file support for secure credentials
* additional django app pre created for learning
* SEPERATE DEPLOY SUPPORTED docker-compose file for deploying over AWS, GCP, etc (Deploy in a matter of mintues)

## Usage

Thinking about starting or moving django projects to a django container?
Little to none experience on docker?
How to deploy it to production? 
How to debug it using inbuilt editor debuggers?

Don't waste much time or effort on it. Just start working on your project. This has got you covered. All in one solution template.

Django-o-Docker is a template repository for Python Django development over a docker container. Many people (if not all) face issues getting started and getting their systems configured for a proper development environment. And then the deployment is the hardest part. This template can be used to directly start working on your project without thinking or giving alot of time on the setup of the environment. The best thing with a docker backed development is that its platform independent and can be run anywhere without any hassle.

Many face issues in running django over docker and then they face linting and code complition issues on IDEs/editors. Some face issues on the in built debugger. You can do both just by running the template on something like VS Code remote container. (VSCode settings and Debug configs provided)

## Getting Started (Installation)

## Requirements
docker v > 19.03
docker-compose v > 1.26

## Process
Configure your env file as per your need. Or you can leave it as it is and it will work perfectly fine.
./init.sql file creates the db for the first time.

```bash
cp .env.sample .env
docker-compose build
docker-compose up       #to see the installation and running container for error monitoring (Recommended for the first time)
docker-compose up -d    #to run the process in the background
```
** Warning: If you face issue while running django application because of the db connection issue. Then just go to mysql cli by using the command given below and create your required database first. And migrate it using docker-compose and manage.py. Also given below.

Please run migration once for the first time.

## Start app
[localhost:8000](http://localhost:8000/)

## Open Database
```bash
docker-compose exec db mysql -u {username} -p
```

## Forced Migration
```bash
docker-compose exec app python manage.py migrate 
```

## Running on VSCode Remote Container
Many face issues in running django over docker and then they face linting and code complition issues on IDEs/editors. Some face issues on the in built debugger. You can do both just by running the template on something like VS Code remote container. (VSCode settings and Debug configs provided). Just follow along here.

Uncomment the following lines in manage.py
```bash
from dotenv import load_dotenv
load_dotenv()
```

Then replace the commented things in settings.py in Databases settings
```bash
"host.docker.internal"
"5504"
```

* Now install Remote Container extention for VS Code. And run the folder in the remote container.
* Install MySql client extention on vscode. And configure it to the running db.
    Host: host.docker.internal
    Port: 5504
* Rebuild the container from command pallet.
* Good to go. Happy Coding and Debugging.

## Contact
Pratyush Pankaj - https://www.linkedin.com/in/pratyushpankaj/ - https://github.com/ronnyrules
Template Link - https://github.com/ronnyrules/django-o-docker

## License
[MIT](https://choosealicense.com/licenses/mit/)
