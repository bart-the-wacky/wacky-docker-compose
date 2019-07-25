FROM bartthewacky/wacky-jenkins-kat

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

ADD ../. /code

RUN apt-get update \
    && apt-get install -y \
        nginx \
		curl \
		apt-transport-https \
		git \
	&& git clone https://github.com/bart-the-wacky/wacky-docker-compose.git \
	&& cp wacky-docker-compose/plugin.txt /usr/share/jenkins \
	&& rm -rf /var/lib/apt/lists/*
		
COPY nginx.conf /etc/nginx/nginx.conf

COPY service_start.sh /home/docker/script/service_start.sh

RUN chmod 744 /home/docker/script/service_start.sh

ENTRYPOINT /home/docker/script/service_start.sh

WORKDIR /var/jenkins_home
