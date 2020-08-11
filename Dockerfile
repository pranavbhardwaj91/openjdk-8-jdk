#Defining the source Image
FROM ubuntu:16.04

#Creating a directory, for testing only not used anywhere
RUN mkdir -p pranav

#Installing the Java Dependencies
RUN apt-get update && apt-get -y install software-properties-common

#Installing the Java jdk version 8
RUN add-apt-repository -y \
    ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y ant && \
    apt-get clean;

#Setting the ENV variable for Java Home
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
