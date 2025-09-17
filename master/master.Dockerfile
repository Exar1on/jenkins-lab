FROM jenkins/jenkins:lts

USER root
COPY /certificates/ca.crt /usr/local/share/ca-certificates/ca.crt
RUN apt-get install ca-certificates
RUN update-ca-certificates
RUN apt-get update && apt-get -y upgrade
USER jenkins
