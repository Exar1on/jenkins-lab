FROM jenkins/inbound-agent

USER root
RUN apt-get update && apt-get upgrade
USER jenkins 
