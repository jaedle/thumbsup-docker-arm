FROM arm32v6/alpine
COPY qemu-arm-static /usr/bin/
RUN apk add --no-cache \
        exiftool \
        ffmpeg \
        gifsicle \
        graphicsmagick \
        node

RUN apk add --no-cache \
        git \
        g++ \
        make \
        npm \
        python
