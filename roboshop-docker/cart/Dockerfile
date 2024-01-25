FROM node:14-alpine3.17
EXPOSE 8080
RUN adduser roboshop
WORKDIR /app
COPY package.json .
RUN npm install -y
COPY server.js .
CMD [ "node", "server.js" ]
