FROM node:12-alpine3.9

RUN apk --no-cache add git

COPY package*.json /

RUN npm ci --production

COPY . .

ENTRYPOINT ["/entrypoint.sh"]
