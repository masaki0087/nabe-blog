FROM node:20-alpine

WORKDIR /app

COPY nabe-blog/package*.json ./

RUN npm install

COPY nabe-blog/. .

CMD ["npm", "run", "dev"]