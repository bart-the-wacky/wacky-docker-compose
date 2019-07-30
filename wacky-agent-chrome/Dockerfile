FROM bartthewacky/wacky-agent

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

RUN apt-get update \
    && apt-get install -y \
        nginx \
		curl \
		apt-transport-https \
	&& sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list' \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
       xorg \
	   xvfb \
	   google-chrome-stable \
	   chromedriver \
	&& chmod -R 777 /home/jenkins \
	&& rm -rf /var/lib/apt/lists/*	

WORKDIR /var/jenkins_home
