FROM jenkins/jenkins:lts-jdk17

USER root
RUN apt-get update && apt-get upgrade
USER jenkins
