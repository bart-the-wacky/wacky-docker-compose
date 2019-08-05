#!/bin/bash

#on vérifie si 
if [ ! -d "/usr/share/wacky-docker-compose" ];then

	echo "Dossier inexistant, clônage de Jenkins";
	cd /usr/share
	git clone https://github.com/bart-the-wacky/wacky-docker-compose.git
	cp -Rv /usr/share/wacky-docker-compose/jenkins_home /var

	echo '------------------- Traitement terminé, Jenkins clôné! -----------------------------'
else 
	echo '------------------- Dossier trouvé, pas de clonage! ------------------------------'
fi

cd /usr/share

systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins

exec "$@"