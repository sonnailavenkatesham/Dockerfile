FROM node:14
EXPOSE 8080
RUN adduser roboshop
WORKDIR /app
COPY package.json .
RUN npm install -y
COPY server.js .
ENV MONGO=true
CMD [ "node", "server.js" ]
