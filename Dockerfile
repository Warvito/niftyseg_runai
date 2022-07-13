# Create enviroment to preprocess dataset using NIFTYSEG
FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y git cmake protobuf-compiler g++

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