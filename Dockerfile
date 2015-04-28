# name: dghubble/python3
# description: Debian Jessie (8.0), python 3.2.3, pip 6.1.1, distribute 0.7.3
# build: docker build -t dghubble/python3:latest .
# run: docker run -t -i dghubble/python3

FROM debian:8.0
MAINTAINER Dalton Hubble <dghubble@gmail.com>

# Update package lists and install python3, python3-dev, pip-3.2
RUN apt-get update && apt-get install --no-install-recommends -y -q \
    python3 python3-dev python3-pip \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip, upgrade distribute
RUN pip3 install --upgrade pip==6.1.1 \
    && pip3 install --upgrade distribute==0.7.3

CMD ["/bin/bash"]

