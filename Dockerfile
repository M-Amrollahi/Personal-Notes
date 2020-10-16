Docker machine is different from Docker engine and you can't use the two terms interchangeably. Here's how these two are different from each other.
https://docs.docker.com/machine/overview/

By "Docker" we mean Docker Engine which is a client-server application made up of the Docker daemon, a REST API that specifies interfaces for 
interacting with the daemon, and a command line interface (CLI) client that talks to the daemon (through the REST API wrapper).
Docker Engine accepts docker commands from the CLI, such as docker run <image>, docker ps to list running containers,docker image ls to list images, and so on.

Docker Machine is a tool for provisioning and managing your Dockerized hosts (hosts with Docker Engine on them). Typically, you install Docker Machine on 
your local system. Docker Machine has its own command line client docker-machine and the Docker Engine client, docker.
You can use Machine to install Docker Engine on one or more virtual systems. These virtual systems can be local 
(as when you use Machine to install and run Docker Engine in VirtualBox on Mac or Windows) or remote 
(as when you use Machine to provision Dockerized hosts on cloud providers).
The Dockerized hosts themselves can be thought of, and are sometimes referred to as, managed “machines”.

Docker is a set of platform-as-a-service (PaaS) products that use OS-level virtualization to deliver software in packages called containers.
Containers are isolated from one another and bundle their own software, libraries, and configuration files; they can communicate with each other through well-defined channels.
All containers are run by a single operating-system kernel and are thus more lightweight than virtual machines. — Wikipedia



docker build --tag my-python-app .
To build the image, run Docker build from a command line or terminal

docker run -it --rm demo_docker
This command runs the Docker container and creates an interactive Bash shell in the container (-it). It also automatically removes the container when it exits (--rm).

docker exec -t -i mycontainer /bin/sh
To see what is inside the container

#inspect network docker containers
docker network inspect bridge

#go to the container shell
docker attach <id>

#Run command inside guest os
RUN apt-get update -y
RUN ["apt-get","update","-y"]
-------------------------
FROM
RUN
CMD
COPY
ADD
WORKDIR
ENTRYPOINT
ENV
LABEL
HEALTHCHECK
STOPSIGNAL
VOLUME
EXPOSE
-----------------------------

FROM <image>[:tag]

This instruction will set the base image for the Dockerfile, which means that every instruction that follows applies to this base image.
FROM python:alpine3.7
-----------------------------
RUN

Run the command inside the container.
This instruction does what it says, it runs commands. Or more specifically, it executes a specific command.
RUN apt-get update

-----------------------------
CMD

The CMD instruction sets a default command, which will be executed when you run the Docker image without specifying a command.
It’s also possible to provide a different command to the Docker image, which will be executed instead of the one specified in the instructions in the Dockerfile.
CMD echo "Hello world"; echo "Hello ?"; ls

##difference CMD and RUN
RUN :  execute the default command, when we are building the image. It also will commit the image changes for next step.
There can be more than 1 RUN command, to aid in process of building a new image.
CMD : This will not be executed at build time.
-----------------------------

COPY

The COPY instruction copies a folder from your local machine to your Docker image. When the Docker image is up and running, you’ll see the folder in the image as well.
COPY ./myFolder /root/TestFolder
-----------------------------

ADD
COPY and ADD serve similar purposes.
You can extract a TAR file from the source directly.
ADD ./test.tar.gz /root
You can use a URL instead of a local file directory.
ADD https://test.com/test.tar.gz /root
-----------------------------

WORKDIR

The WORKDIR instruction is used to define the working directory of a Docker container at any given time. The command is specified in the Dockerfile.
Any consecutive RUN, CMD, ADD, COPY, or ENTRYPOINT instruction will be executed in the specified working directory.
WORKDIR /root/a
RUN mkdir ./test
-----------------------------
ENV

An environment variable is a dynamic-named value that can affect the way running processes will behave on a computer. They are part of the environment in which a process runs.
FROM ubuntu
ENV workdir=/root/
CMD echo $workdir
-----------------------------

LABEL

just a meta tag. key-value
LABEL decs="do not hurn me"
-----------------------------

EXPOSE

The EXPOSE instruction informs Docker that the container listens on a specific network port at runtime. You can also specify whether the port listens on TCP or UDP (the default is TCP).
To make a port available to services outside of Docker, or to Docker containers that are not connected to the container’s network, use the --publish or -p flag. This maps a container port to a port on the Docker host.
-----------------------------
ENTRYPOINT
The ENTRYPOINT instruction of a Dockerfile looks similar to the CMD instruction at first sight. It specifies the default command to execute at runtime, and you’ll not be able to override it.
FROM ubuntu
ENTRYPOINT ls
