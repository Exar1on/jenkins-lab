FROM jenkins/inbound-agent

USER root

COPY /certificates/ca.crt /usr/local/share/ca-certificates
COPY /certificates/client-dev.crt /etc/ssl/private/
COPY ./dev_entrypoint.sh /home/jenkins/entrypoint.sh
ENTRYPOINT [ "/bin/bash", "entrypoint.sh"]
RUN apt-get install ca-certificates
RUN update-ca-certificates
RUN apt-get update
RUN apt-get -y upgrade
#USER jenkins 
#RUN export JENKINS_AGENT_SECRET=$(</tmp/vault/render.txt)
#ENV JENKINS_AGENT_SECRET /tmp/vault/render.txt 
