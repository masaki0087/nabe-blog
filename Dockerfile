FROM node:20-alpine

# Gitをインストール
RUN apk add --no-cache git

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

USER node
CMD ["npm", "run", "dev"]