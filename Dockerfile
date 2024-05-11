FROM ubuntu:22.04
RUN apt-get update && apt-get install -y wget unzip
WORKDIR /app
RUN wget https://github.com/nkanaev/yarr/releases/download/v2.4/yarr-v2.4-linux64.zip
RUN unzip yarr-v2.4-linux64.zip
