FROM node:latest

COPY . /var/www

WORKDIR /var/www

RUN npm install

EXPOSE 5000

CMD ["node","cms.js"]
