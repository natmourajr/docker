# base image
FROM tensorflow/tensorflow:latest-gpu-jupyter

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
    python3 \
    python3-pip \
    python3-dev \
    python3-venv \
    git \
    vim \ 
    less \
    nano \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


# Install pip packages
RUN mkdir /images
RUN cd /images && git clone https://github.com/natmourajr/docker.git && cd docker/SisLin1 && pip install -r requirements.txt
RUN rm -rf /images
RUN cd /
RUN rm -rf tensorflow-tutorials

RUN mkdir /workspace && cd /workspace

ENV NOTEBOOK_PATH /workspace/notebooks
ENV WORKSPACE /workspace


