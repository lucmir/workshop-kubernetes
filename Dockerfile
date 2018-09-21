FROM node:8-alpine

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app
RUN cd /app && npm install

COPY ./ /app

RUN npm run assets

EXPOSE 9000
CMD ["npm", "run", "start"]
