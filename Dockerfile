FROM node:10-alpine
WORKDIR /usr/src/app
COPY ./docker-app/package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
