### Installation ###

## Requirement ##

To run the app locally you will need docker and docker-compose installed. For Linux users you can run the script
`installation_setup.sh`.

### Setup commands ###

* Start and build containers (First time setup and if docker setup changes):  
docker-compose up --build

* Start containers:  
docker-compose up

* Stop containers:  
docker-compose stop

* Remove containers:  
docker-compose down

* Enter shell mode in a container:  
docker exec -it <name_of_container> sh

Frontend:
http://localhost

Backend:
http://localhost/api
