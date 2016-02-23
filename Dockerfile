FROM quay.io/coreos/alpine-sh:latest
MAINTAINER Dalton Hubble <dghubble@gmail.com>
# https://github.com/docker-library/python/issues/13
ENV LANG C.UTF-8
RUN apk --no-cache --update add python3 python3-dev ca-certificates && python3 -m ensurepip && pip3 install --upgrade pip
ENTRYPOINT ["/usr/bin/python3"]
