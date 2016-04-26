FROM harshjv/texlive-2015:latest

MAINTAINER Jonhnatha Trigueiro <joepreludian@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install pandoc* -y

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*

ENV PATH /opt/texbin:$PATH
VOLUME /var/texlive

WORKDIR /var/texlive
