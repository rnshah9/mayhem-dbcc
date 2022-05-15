# Build Stage
FROM --platform=linux/amd64 ubuntu:20.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y make gcc

ADD . /dbcc
WORKDIR /dbcc
RUN make
