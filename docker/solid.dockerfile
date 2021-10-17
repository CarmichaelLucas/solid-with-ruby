FROM ruby:3.0.2-alpine3.14

RUN apk add --no-cache --update \
            build-base

RUN gem update --system \
    && gem install bundle

WORKDIR /usr/src/app

ADD ./Gemfile ./Gemfile
ADD ./Gemfile.lock ./Gemfile.lock

RUN bundle install