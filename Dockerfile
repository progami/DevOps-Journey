FROM node:alpine

WORKDIR '/app'
 
COPY frontend/package.json .
RUN npm install

COPY frontend/. .

CMD ["npm", "run", "start"]