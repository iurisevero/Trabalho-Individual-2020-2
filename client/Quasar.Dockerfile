FROM node:14.16.1

WORKDIR /client
COPY package*.json ./
RUN yarn global add @quasar/cli
RUN yarn install
COPY . .
