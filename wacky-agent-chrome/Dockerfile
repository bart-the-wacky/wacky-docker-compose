FROM bartthewacky/wacky-agent-chrome

MAINTAINER BARTHELEMY Romain <bart_the_wacky@hotmail.com>

RUN apt-get update && apt-get install -y nginx curl apt-transport-https && sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list' && apt-get update && apt-get install -y xorg xvfb google-chrome-stable chromedriver && chmod -R 777 /home/jenkins	
		
COPY nginx.conf /etc/nginx/nginx.conf

COPY service_start.sh /home/docker/script/service_start.sh

RUN chmod 744 /home/docker/script/service_start.sh

ENTRYPOINT /home/docker/script/service_start.sh

WORKDIR /var/jenkins_home
