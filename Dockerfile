# Pull base image
FROM ubuntu:18.04

EXPOSE 4000

# Install
RUN \
  apt update -y && apt upgrade -y && \
  \
  apt install -y ruby-full && apt install -y apt-utils && \
  ruby --version && \
  \
  apt install -y wget && apt install -y curl && \
  wget "https://rubygems.org/rubygems/rubygems-3.0.3.tgz" && \
  \
  tar xvfz rubygems-3.0.3.tgz && \
  \
  cd rubygems-3.0.3 && ruby setup.rb && cd ..
  
# build-essential installs gcc g++ and make
RUN apt install -y build-essential && gcc -v && g++ -v && make -v && \
  gem install jekyll bundler

RUN apt install -y nginx curl
# docker build -t jeyll:ubuntu-18.04 .