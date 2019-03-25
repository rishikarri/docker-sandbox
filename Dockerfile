# version of node to use -- 10 is node's most recent LTS (Long Term Support) version
FROM node:lts-alpine

# app dir
WORKDIR /usr/app

# installing app dependencies
COPY package.json .

RUN yarn install

# copy app source code
COPY . .

# expose port that the app is running on
EXPOSE 3456

# run server
CMD ["yarn", "start"]