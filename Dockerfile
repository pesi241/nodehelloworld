FROM node:alpine
COPY index.js /var/www/helloworld/
COPY package.json /var/www/helloworld/
WORKDIR /var/www/helloworld
ENV NODE_ENV production
ENV PORT 8080
RUN npm i
EXPOSE 8080
CMD ["npm", "start"]

