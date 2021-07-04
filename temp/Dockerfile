FROM debian:latest
RUN  apt-get -y update && apt-get install -y apache2 && apt-get install -y php libapache2-mod-php && rm /var/www/html/index.html
ADD  https://raw.githubusercontent.com/OBovtunov/devops-hometasks/master/task-02/index.php /var/www/html/index.php
RUN  chmod -R 755 /var/www/example.com
CMD service apache2 start & bash
