FROM ruby:3.4.0-preview1-alpine3.20

RUN apk add --no-cache bash gdb

ADD script.rb .
