FROM arm32v7/node:10-slim

COPY qemu-arm-static /usr/bin/
RUN apt-get update && apt-get install --yes \
    exiftool \
    ffmpeg \
    gifsicle \
    graphicsmagick
