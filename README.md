# docker-centos75

Pull Docker image 
> docker pull ninetom/centos7-httpd

Run a container by use Docker image
> docker run --detach --publish 80:80 --publish 443:443 --name webserver ninetom/centos7-httpd

Build Docker image from source code with Docker-Compose
> docker-compose up
