FROM node:14.16.1-alpine3.10

WORKDIR /client
COPY package*.json ./
RUN yarn global add @quasar/cli && yarn install
COPY . .
