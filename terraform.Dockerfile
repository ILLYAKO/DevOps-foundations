# create from Linux alpine
FROM alpine
MAINTAINER Illya Korotun <illya.korotun@gmainl.com>

#download Terraform from https://developer.hashicorp.com/terraform/downloads

# Ubuntu
# RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
# RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
# RUN sudo apt update && sudo apt install terraform

#CentOS
RUN yum install -y yum-utils
RUN yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
RUN yum -y install terraform


# nobody user has privilages to execute
USER nobody 