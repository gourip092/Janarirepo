FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install git -y
RUN apt-get install java-1.8.0
RUN apt-get install npm -y
