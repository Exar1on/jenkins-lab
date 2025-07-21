FROM jenkins/jenkins:lts

USER root
RUN apt-get update && apt-get -y upgrade
USER jenkins
