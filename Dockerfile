FROM ubuntu:16.04

MAINTAINER Ondrej Galbavy "o.galbavy@pygmalios.com"

RUN apt-get update &&\
    apt-get install --no-install-recommends --no-install-suggests -y \
        ca-certificates curl wget jq kafkacat vim s3cmd ruby nodejs nodejs-legacy &&\
    apt-get clean && rm -rf /tmp/* /var/tmp/*

RUN gem install bundler

