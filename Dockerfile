# version of node to use -- 10 is node's most recent LTS (Long Term Support) version
FROM node:lts-alpine

# installing app dependencies
COPY package.json .

RUN yarn install

# copy app source code
COPY . .

# expose port that the app is running on
EXPOSE 8080

# run server
CMD ["yarn", "start"]