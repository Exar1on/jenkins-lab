FROM jenkins/inbound-agent

USER root

#just environments, no additional dependencies
RUN if ["$ENVIRONMENT" = "dev" ] ; then \
		apt-get update && apt-get upgrade ; \
	elif [ "$ENVIRIONMENT" = "test" ] ; then \
		apt-get update && apt-get upgrade ; \
	else \
		apt-get update && apt-get upgrade ; \
fi

USER jenkins 
