FROM node:12-alpine

WORKDIR /app

COPY package.json /app

RUN yarn install && yarn cache clean

COPY . /app

CMD ["yarn", "run", "build"]
