FROM bartthewacky/wacky-jenkins-kat

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

USER root

RUN apt-get update \
    && apt-get install -y \
        nginx \
		curl \
		apt-transport-https \
		git \
	&& chmod -R 777 /var \
	&& chmod -R 777 /var/jenkins_home \
	&& rm -rf /var/lib/apt/lists/*
	
COPY entrypoint.sh /usr/share/entrypoint.sh	
	
ENTRYPOINT ["/usr/share/entrypoint.sh"]

WORKDIR /var/jenkins_home