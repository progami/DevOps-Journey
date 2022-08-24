# Build the react js frontend first
FROM node:16-alpine

WORKDIR /home/node/app

COPY frontend/package.json .

RUN npm install

COPY frontend/. .

RUN npm run build

# copy build files to nginx for static hosting
FROM nginx

EXPOSE 80

COPY --from=0 /home/node/app/build /usr/share/nginx/html

