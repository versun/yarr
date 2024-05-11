FROM ubuntu:22.04 as builder
RUN apt-get update && apt-get install -y wget unzip
WORKDIR /app
RUN wget https://github.com/nkanaev/yarr/releases/download/v2.4/yarr-v2.4-linux64.zip \
    && unzip yarr-v2.4-linux64.zip

FROM ubuntu:22.04
WORKDIR /app
COPY --from=builder /app/yarr /app/yarr
