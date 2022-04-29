FROM ruby:2.7
MAINTAINER guxiaobai <sikuan.gu@gmail.com>

RUN apt-get update && apt-get install -y build-essential

RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app