FROM node:18
WORKDIR /app
ADD . /app/
RUN npm install
CMD npm start