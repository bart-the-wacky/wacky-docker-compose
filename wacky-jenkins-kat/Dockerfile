FROM bartthewacky/wacky-jenkins-kat

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

USER root

ENV TERM='xterm'

RUN apt-get update \
    && apt-get install -y \
        nginx \
		curl \
		apt-transport-https \
		git \
		dos2unix \
		systemd \
	&& cd /usr/share \
	&& rm -rf /var/lib/apt/lists/*
	
COPY entrypoint.sh /usr/share/entrypoint.sh	

RUN dos2unix /usr/share/entrypoint.sh
	
ENTRYPOINT ["/usr/share/entrypoint.sh"]

ADD https://repo.jenkins-ci.org/releases/org/jenkins-ci/main/jenkins-war/2.151/jenkins-war-2.151.war /usr/share/jenkins.war

CMD ["java", "-jar", "/usr/share/jenkins.war"]

WORKDIR /var/jenkins_home