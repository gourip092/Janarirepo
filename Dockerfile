FROM ubuntu:0.0.9

RUN apt-get update -y
RUN apt-get install git -y
RUN apt-get install apache2 -y
