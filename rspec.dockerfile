# create from base ruby image
FROM ruby:alpine 
MAINTAINER Illy Korotun <illya.korotun@gmail.com>

# apk is pacage from alpine
# add package ruby-nokogiri for parsing 
RUN apk add build-base ruby-nokogiri

# install in contaimer from ruby gem library rubygems.org
RUN gem install rspec capybara selenium-webdriver

#Which process should start when container is starting
ENTRYPOINT ["rspec"]
