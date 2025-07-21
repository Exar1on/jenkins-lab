FROM jenkins/inbound-agent

USER root

#just environments, no additional dependencies
RUN if [ "$ENVIRONMENT" = "dev" ] ; then apt-get update && apt-get -y upgrade ; \
	elif [ "$ENVIRIONMENT" = "test" ] ; then \
		apt-get update && apt-get -y upgrade ; \
	else \
		apt-get update && apt-get -y upgrade ; \
fi

USER jenkins 
