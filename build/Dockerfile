FROM jaedle/thumbsup-arm:runtime
COPY qemu-arm-static /usr/bin/

RUN apk add --no-cache git make g++ python bash

WORKDIR /app
RUN npm init -y
RUN npm install better-sqlite3
