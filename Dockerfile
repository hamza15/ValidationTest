FROM node:10-alpine
WORKDIR /usr/src/app
COPY package*.json ./docker-app
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
