FROM bartthewacky/wacky-agent

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

USER root

RUN apt-get update \
    && apt-get install -y \
        nginx \
		curl \
		apt-transport-https \
	&& wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
	&& sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list' \
	&& apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-unauthenticated \
       xorg \
	   xvfb \
	   chromium \
	   chromedriver \
	&& chmod -R 777 /var/jenkins_home \
	&& chmod -R 777 /home/jenkins \
	&& rm -rf /var/lib/apt/lists/*	

USER jenkins

WORKDIR /var/jenkins_home