# Build Commands

## Make sure docker is working:
```bash
docker -v 
git clone https://github.com/hudsonbl/MovieWebsite.git
cd MovieWebsite
```
Create the project with the build command 
```bash
docker-compose up --build -d 
```
Once it is done check out if the container is running
```bash
docker container ls --all
```
## Remember to install npm packages

## Side notes about how it works:
.env file stores all enviornment variables. But you will need to initialize them as well by setting them in the command line. 
lib/mysqlPool creates a sql pool. Models is where the sql queries occur. API is where the endpoints are resolved. Docker will 
look at the .env file and initialize db with those variables. docker-compose file will state those variables. NPM Server won't
recognize that file which is why you need to manually initialize them. Test out the endpoint with Postman using url 
GET
http://localhost:8080/movies

## More useful commands:
```bash
docker-compose up --build -d ## Build project
docker-compose down ## Take down project 
docker system prune --all ## Removes all non running containers and images 
## When the container is built
docker exec -it mysql-server bash ## Connects to image with bash
## Then while connected to container 
mysql -u groot -p 
<enter pword>
show databases;
use db;
show tables;
SELECT * FROM <table>; ## to ensure the db init file executed 
```