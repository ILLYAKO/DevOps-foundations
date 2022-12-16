# create from Linux alpine
FROM alpine
MAINTAINER Illya Korotun <illya.korotun@gmainl.com>

#download Terraform from https://developer.hashicorp.com/terraform/downloads

RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_linux_amd64.zip
RUN unzip /tmp/terraform.zip -d /
RUN apk add --no-cache ca-certificates curl
# nobody user has privilages to execute
USER nobody 

# check installed terraform in the container
ENTRYPOINT [ "/terraform" ]