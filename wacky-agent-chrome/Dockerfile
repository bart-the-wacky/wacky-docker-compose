FROM bartthewacky/wacky-agent

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

USER root

ENV TERM='xterm'

RUN apt-get update \
    && apt-get install -y \
        nginx \
		curl \
		apt-transport-https \
		maven \
		openssl \
		fonts-liberation \
		libappindicator3-1 \
		lsb-release \
		xdg-utils \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-unauthenticated \
       xorg \
	   xvfb \
	&& chmod -R 777 /var/jenkins_home \
	&& chmod -R 777 /home/jenkins \
	&& rm -rf /var/lib/apt/lists/*	
	
COPY google-chrome-stable_75.0.3770.142-1_amd64.deb /usr/share

RUN dpkg -i /usr/share/google-chrome-stable_75.0.3770.142-1_amd64.deb

USER jenkins

WORKDIR /var/jenkins_home