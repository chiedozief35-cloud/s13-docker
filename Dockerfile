FROM node:22-alpine

WORKDIR /app

COPY app/server.js ./server.js
COPY web/public ./public

RUN mkdir -p /data

EXPOSE 8080

VOLUME ["/data"]

CMD ["node", "server.js"]
