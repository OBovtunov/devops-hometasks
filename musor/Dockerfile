FROM debian:buster
RUN apt-get update && apt-get install -y ansible 
COPY ./jenkins.yaml /root/jenkins.yaml
RUN ansible-galaxy install geerlingguy.jenkins \
&& ansible-galaxy install geerlingguy.java \
&& ansible-playbook /root/jenkins.yaml
ENTRYPOINT /usr/bin/daemon--name=jenkins--inherit--env=JENKINS_HOME=/var/lib/jenkins--output=/var/log/jenkins/jenkins.log--pidfile=/var/run/jenkins/jenkins.pid--/bin/java-Djava.awt.headless=true-Djenkins.install.runSetupWizard=false-Dhudson.security.csrf.DefaultCrumbIssuer.EXCLUDE_SESSION_ID=true-jar/usr/share/jenkins/jenkins.war--webroot=/var/cache/jenkins/war--httpPort=8080--prefix=



