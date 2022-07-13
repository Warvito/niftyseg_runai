# Create enviroment to preprocess dataset using NIFTYSEG
FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y git cmake protobuf-compiler g++

ARG USER_ID
ARG GROUP_ID
ARG USER
RUN addgroup --gid $GROUP_ID $USER
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID $USER

# Clone NIFTYSEG
RUN mkdir /home/workspace
WORKDIR /home/workspace
RUN git clone https://github.com/KCL-BMEIS/NiftySeg.git
WORKDIR /home/workspace/NiftySeg

# Install NIFTYSEG
RUN mkdir /home/workspace/NiftySeg/build
WORKDIR /home/workspace/NiftySeg/build
RUN cmake /home/workspace/NiftySeg
RUN make
RUN make install