FROM node:12.18.3-alpine3.9

WORKDIR /usr/src/smart-brain-api

COPY ./ ./

RUN npm install

CMD ["npm", "start"]