# hub.docker.com
FROM jenkins/jenkins:alpine
MAINTAINER Illya Korotun <illya.korotun@gmail.com>

# Jenkins plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt

# Install jenkins plugins
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/plugins.txt

# Expose jenkins default port
EXPOSE 8080
