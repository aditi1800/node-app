FROM node:latest
WORKDIR /usr/src/app
RUN cd project
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]
