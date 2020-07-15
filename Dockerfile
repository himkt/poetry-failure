FROM ubuntu:20.04

RUN apt update -y && \
  apt install -y python3 python3-dev python3-venv python3-pip

RUN pip3 install poetry

WORKDIR /workspace
COPY ./sample sample

WORKDIR /workspace/sample
RUN poetry add konoha -E all_with_integrations
