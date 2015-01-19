# dghubble/python3

[dghubble/python3](https://registry.hub.docker.com/u/dghubble/python3/) is a Docker image providing Python 3.2, [pip](https://packages.debian.org/wheezy/python3-pip), [distribute](https://pypi.python.org/pypi/distribute/0.7.3), and [python3-dev](https://packages.debian.org/wheezy/python3-dev) on [Debian](https://www.debian.org/releases/) Wheezy 7.7 (stable).

## Features

From from Debian [stable](https://packages.debian.org/stable/):

  * Python 3.2.3
  * python3.2-dev

From [PyPI](https://pypi.python.org/pypi):

  * pip 1.5.6
  * distribute 0.7.3

## Size

183.4MB

## Build

    cd dghubble-docker/python3
    docker build -t dghubble/python3:latest .

## Start

    docker run -t -i dghubble/python3

## License

[MIT License](LICENSE)

