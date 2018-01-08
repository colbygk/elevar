FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update && \
    apt-get install -y curl
RUN apt-get install -y apt-utils && \
    apt-get install -y locales && \
    locale-gen "en_US.UTF-8" && \
    apt-get install -y binutils && \
    apt-get install -y vim
RUN curl -O https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    dpkg -i erlang-solutions_1.0_all.deb && \
    apt-get update && \ 
    apt-get install -y esl-erlang && \ 
    apt-get install -y elixir


ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

VOLUME /todo

ENTRYPOINT ["bash"]
