FROM node

RUN mkdir /usr/scr/app

WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_models/.bin:$PATH

COPY package*.json ./

RUN npm install

COPY . /usr/src/app

EXPOSE 4000
CMD [ "npm", "start"]
