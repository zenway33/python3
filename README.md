# python3 [![Build Status](https://travis-ci.org/dghubble/python3.svg?branch=master)](https://travis-ci.org/dghubble/python3) [![Docker Repository on Quay](https://quay.io/repository/dghubble/python3/status "Docker Repository on Quay")](https://quay.io/repository/dghubble/python3)

`python3` provides an Application Container Image (ACI) or a Docker image with `python3` based on [coreos/alpine-sh](https://quay.io/repository/coreos/alpine-sh).

## Includes

  * Python 3.4.3
  * python3-dev
  * pip3 8.0.2

## Usage

Pull the published ACI from Quay.

    sudo rkt --insecure-options=image fetch docker://quay.io/dghubble/python3

Run the ACI in a pod with rkt.

    sudo rkt --insecure-options=image run --interactive quay.io/dghubble/python3 

Alternately, Docker can be used.

    sudo docker pull quay.io/dghubble/python3:latest
    sudo docker run -t -i quay.io/dghubble/python3

## Going Further

Container images can be built based on the `python3` image if you prefer not to copy the build steps used here.

In ACI build scripts, add a `dep`:

    acbuild --debug dep add quay.io/dghubble/python3
    acbuild --debug run -- pip3 install -r /requirements.txt

If you have a Dockerfile, use:

    FROM quay.io/dghubble/python3

## Development

An image can be modified, built, and run locally.

### Container Image

Build an ACI.

    sudo ./build-aci

Alternately, build a Docker image.

    sudo docker build --rm=true -t dghubble/python3 .

### Run

Run the ACI with rkt.

    sudo rkt --insecure-options=image run --interactive python3.aci

Alternately, run the Docker image.

    sudo docker run -t -i dghubble/python3



