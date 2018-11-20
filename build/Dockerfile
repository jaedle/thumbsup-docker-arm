FROM jaedle/thumbsup:runtime
RUN apk add --no-cache git make g++ python bash

WORKDIR /app
RUN npm init -y
RUN npm install better-sqlite3
