FROM jenkins/jenkins:lts

USER root

# Install sudo
RUN apt-get update && apt-get install -y sudo

# Give root access to Jenkins
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Install telnet and ping
RUN apt-get install -y telnet iputils-ping

# Install apt package
RUN apt-get install -y apt


USER jenkins

