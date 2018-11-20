FROM arm32v7/node:10-stretch

COPY qemu-arm-static /usr/bin/
RUN apt-get update && apt-get install --yes \
    exiftool \
    ffmpeg \
    gifsicle \
    graphicsmagick

RUN apt-get update && apt-get install --yes \
    git \
    g++ \
    make \
    python

WORKDIR /app
RUN npm init -y
RUN npm --verbose install better-sqlite3
