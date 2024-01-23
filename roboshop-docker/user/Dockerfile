FROM node:14
EXPOSE 8080
WORKDIR /opt/server
COPY package.json .
COPY server.js .
RUN npm install -y
ENV MONGO=true
CMD [ "node", "server.js" ]
