FROM bartthewacky/wacky-jenkins-kat

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

ADD ../. /code

RUN apt-get update \
    && apt-get install -y \
        nginx curl apt-transport-https
		
COPY nginx.conf /etc/nginx/nginx.conf

COPY service_start.sh /home/docker/script/service_start.sh

RUN chmod 744 /home/docker/script/service_start.sh

ENTRYPOINT /home/docker/script/service_start.sh

WORKDIR /var/jenkins_home
