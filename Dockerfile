FROM node:8

RUN mkdir /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./package.json
RUN rm -rf ./node_modules
RUN npm install --silent
RUN npm install react-scripts@1.1.1 -g --silent

EXPOSE 9333

