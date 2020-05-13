FROM node:alpine

LABEL maintainer="danielcosta@gmail.com"

RUN npm install --quiet --global @vue/cli

RUN mkdir /workspace

WORKDIR /workspace

