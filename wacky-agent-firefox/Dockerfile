FROM bartthewacky/wacky-agent

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        nginx\
		curl \
		apt-transport-https \
		xorg \
		xvfb \
		firefox-esr \
	&& chmod -R 777 /var/jenkins_home \
	&& rm -rf /var/lib/apt/lists/*	

WORKDIR /var/jenkins_home
