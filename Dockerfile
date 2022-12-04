FROM nginx:alpine
MAINTAINER Illya Korotun <illya.korotun@gmail.com>

COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
