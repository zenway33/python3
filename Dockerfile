# name: dghubble/python3
# description: Debian Wheezy (7.7), python 3.2.3, pip 6.0.6, distribute 0.7.3
# build: docker build -t dghubble/python3:latest .
# run: docker run -t -i dghubble/python3

FROM debian:7.7
MAINTAINER Dalton Hubble <dghubble@gmail.com>

# Update package lists, install python3, python3-dev, pip-3.2, remove package lists
RUN apt-get update -y \
    && apt-get install --no-install-recommends -y -q python3 python3-dev python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip, upgrade distribute
# merge as single instruction since pip upgrade removes pip-3.2 and adds as pip
# Upgrade distribute
RUN pip-3.2 install --upgrade pip==6.0.6 \
    && pip install --upgrade distribute==0.7.3

CMD ["/bin/bash"]

