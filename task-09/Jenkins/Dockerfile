FROM debian:buster
RUN apt-get update && apt-get install -y ansible 
  
COPY ./Jenkins.yaml /temp/Jenkins.yaml
COPY ./templates/ /templates/
RUN ansible-galaxy install geerlingguy.jenkins \
&& ansible-galaxy install geerlingguy.java \
&& ansible-playbook /temp/Jenkins.yaml
CMD /var/lib/jenkins/jenkins_start.sh
#CMD /etc/init.d/jenkins start && bash




