FROM bartthewacky/wacky-jenkins-kat

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

RUN apt-get update \
    && apt-get install -y \
        nginx \
		curl \
		apt-transport-https \
		git \
	&& git clone https://github.com/bart-the-wacky/wacky-docker-compose.git \
	&& cp -R wacky-docker-compose/jenkins_home /var \
	&& chmod -R 777 /var/jenkins_home \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /var/jenkins_home