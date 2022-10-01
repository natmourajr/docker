# base image
FROM tensorflow/tensorflow:latest


LABEL maintainer "Natanael Moura Junior <natmourajr@lps.ufrj.br>"

USER root
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV TERM screen

RUN ls

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone

RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-science \
    texlive-fonts-recommended \
    xzdec \
    git \
    vim \ 
    less \
    nano && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install pip packages
RUN mkdir /images
RUN cd /images && git clone https://github.com/natmourajr/docker.git && cd docker/sonar && pip install -r requirements.txt
RUN cd /
