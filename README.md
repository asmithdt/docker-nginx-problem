# Nginx problem

This repository contains a Dockerfile which extends the official nginx container image to create a microservice. The microservice is called bouncer and is responsible for incoming connections that are not recognised by any external load balacing rules, they will fall through to this service.

Bouncer's resposibilities are:

* Redirecting a HTTP request to HTTPS via a 301 redirect
* Returning a custom 404 page

There are multiple issues to be found with this repository, you are tasked with fixing the problems with this container and writing up your findings as to why it was broken. Please also write any observations about the implementation of this microservice that could be problematic.

To build the container:

`docker build -t local/nginx-problem .`

To run the container in the foreground:

`docker run -p 80:80 -p 443:443 -it local/nginx-problem`

To run the container in the background:

`docker run -d -p 80:80 -p 443:443 -it local/nginx-problem`

To spawn a shell in a running container:

`docker ps` - this will show running containers
`docker exec <container id/name> sh` - this will insert you into a shell on the running container
