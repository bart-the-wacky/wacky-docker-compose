FROM bartthewacky/wacky-agent

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

USER root

RUN apt-get update \
    && apt-get install -y \
        nginx \
		curl \
		apt-transport-https \
		maven \
	&& dpkg -i https://github.com/webnicer/chrome-downloads/blob/master/x64.deb/google-chrome-stable_75.0.3770.142-1_amd64.deb
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-unauthenticated \
       xorg \
	   xvfb \
	&& chmod -R 777 /var/jenkins_home \
	&& chmod -R 777 /home/jenkins \
	&& rm -rf /var/lib/apt/lists/*	

USER jenkins

WORKDIR /var/jenkins_home